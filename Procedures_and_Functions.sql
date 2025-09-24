-- PROCEDURES
--Procedure1: Apply 10% Discount to customers who live in "ON"
CREATE OR REPLACE PROCEDURE apply_province_order_discount (
  p_province IN customers.customer_province%TYPE
)
IS
  CURSOR order_cursor IS
    SELECT o.order_id, c.customer_id
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    WHERE UPPER(c.customer_province) = UPPER(p_province)
      AND o.order_status = 'Pending';

  lv_order_id orders.order_id%TYPE;
  lv_customer_id customers.customer_id%TYPE;
  lv_discounted_total NUMBER := 0;
  lv_original_total NUMBER := 0;
BEGIN
  FOR order_rec IN order_cursor LOOP
    SELECT SUM(oi.paid_each * oi.quantity)
    INTO lv_original_total
    FROM orderitems oi
    WHERE oi.order_id = order_rec.order_id;

    lv_discounted_total := lv_original_total * 0.90;

    -- Display result
    DBMS_OUTPUT.PUT_LINE('Order ID: ' || order_rec.order_id ||
                         ' | Customer ID: ' || order_rec.customer_id ||
                         ' | Original Total: $' || TO_CHAR(lv_original_total, '9990.00') ||
                         ' | Discounted Total: $' || TO_CHAR(lv_discounted_total, '9990.00'));
  END LOOP;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No pending orders found for province ' || p_province);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

--TEST
BEGIN
  apply_province_order_discount('ON');
END;
/


--Procedure2: Update order_status to 'Cancelled' when stock of product is 0
CREATE OR REPLACE PROCEDURE cancel_out_of_stock_orders
IS
  CURSOR pending_orders_cur IS
    SELECT order_id
    FROM orders
    WHERE order_status = 'Pending';

  lv_found_out_of_stock BOOLEAN := FALSE;
BEGIN
  FOR order_rec IN pending_orders_cur LOOP
    lv_found_out_of_stock := FALSE;

    FOR item_rec IN (
      SELECT oi.product_id
      FROM orderitems oi
      JOIN inventories inv ON oi.product_id = inv.product_id
      WHERE oi.order_id = order_rec.order_id
      GROUP BY oi.product_id
      HAVING SUM(inv.quantity) = 0
    ) LOOP
      lv_found_out_of_stock := TRUE;
      EXIT;
    END LOOP;

    IF lv_found_out_of_stock THEN
      UPDATE orders
      SET order_status = 'Cancelled'
      WHERE order_id = order_rec.order_id;

      DBMS_OUTPUT.PUT_LINE('Order ' || order_rec.order_id || ' cancelled due to stock shortage.');
    END IF;
  END LOOP;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

--TEST
BEGIN
  cancel_out_of_stock_orders;
END;
/

-- FUNCTIONS
-- Function1: Total revenue for a product across all orders
CREATE OR REPLACE FUNCTION func_product_revenue(
  p_prod_id IN PRODUCTS.product_id%TYPE
) RETURN NUMBER
IS
  lv_revenue NUMBER := 0;
BEGIN
  SELECT NVL(SUM(oi.quantity * oi.paid_each),0)
    INTO lv_revenue
    FROM ORDERITEMS oi
    JOIN ORDERS o ON oi.order_id = o.order_id
   WHERE oi.product_id = p_prod_id
     AND o.order_status IN ('Shipped','Delivered');

  RETURN lv_revenue;

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20054,
      'func_product_revenue failed: '||SQLERRM);
END;
/

-- TEST
SET SERVEROUTPUT ON

BEGIN
  DBMS_OUTPUT.PUT_LINE('Revenue = ' || func_product_revenue(301));
END;
/

-- Function2: Days between order_date and ship_date (returns NULL if SHIP_DATE is NULL)
CREATE OR REPLACE FUNCTION func_days_to_ship (
  p_order_id IN ORDERS.order_id%TYPE
) RETURN NUMBER
IS
  lv_days NUMBER;
BEGIN
  SELECT ship_date - order_date
  INTO lv_days
  FROM ORDERS
  WHERE order_id = p_order_id;

  RETURN lv_days;

EXCEPTION
  WHEN NO_DATA_FOUND THEN RETURN NULL;
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20053, 'func_days_to_ship failed: ' || SQLERRM);
END;
/

-- TEST
SET SERVEROUTPUT ON

BEGIN
  DBMS_OUTPUT.PUT_LINE('Days to ship = ' || func_days_to_ship(401));
END;
/
