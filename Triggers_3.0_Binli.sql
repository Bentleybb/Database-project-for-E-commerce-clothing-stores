--Trigger 1: Prevent low inventory in INVENTORIES table, when quantity < 50 will send an alert.

CREATE OR REPLACE TRIGGER check_safe_stock_trg
AFTER INSERT OR UPDATE ON INVENTORIES
FOR EACH ROW
WHEN (NEW.quantity < 50)
DECLARE
  lv_error VARCHAR2(4000);
BEGIN
  DBMS_OUTPUT.PUT_LINE(
    'ALERT: Inventory ID ' || :NEW.inventory_id ||
    ' has only ' || :NEW.quantity || ' items. Refill required.'
  );

EXCEPTION
  WHEN OTHERS THEN
    lv_error := SQLERRM;
    DBMS_OUTPUT.PUT_LINE('Error in check_safe_stock_trg: ' || lv_error);
END;
/


--Test Trigger:

UPDATE INVENTORIES
SET quantity = 25
WHERE inventory_id = 906;


-- Trigger 2: Auto-update order_status to "Delivered" when ship_status becomes "Delivered"

CREATE OR REPLACE TRIGGER update_order_status_trg
AFTER UPDATE OF ship_status ON SHIPPING
FOR EACH ROW
WHEN (NEW.ship_status = 'Delivered')
DECLARE
  lv_error_message VARCHAR2(4000);
BEGIN
  UPDATE ORDERS
  SET order_status = 'Delivered'
  WHERE order_id = :NEW.order_id;

EXCEPTION
  WHEN OTHERS THEN
    lv_error_message := SQLERRM;
    DBMS_OUTPUT.PUT_LINE(
      'Error updating order_status for Order ID ' || :NEW.order_id || 
      ' -> Error: ' || lv_error_message
    );
END;
/


--Test Trigger:

--View the data before calling the tirgger

SELECT order_id, order_status
FROM ORDERS
WHERE order_id = (SELECT order_id FROM SHIPPING WHERE ship_id = 602);


UPDATE SHIPPING
SET ship_status = 'Delivered'
WHERE ship_id = 602; 

-- Check the data after calling the trigger 
SELECT order_id, order_status
FROM ORDERS
WHERE order_id = (SELECT order_id FROM SHIPPING WHERE ship_id = 602);


