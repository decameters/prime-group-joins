-- 1. get all customers and their addresses
SELECT * FROM addresses
JOIN "customers" ON "customers"."id"="addresses"."customer_id";

-- 2. get all orders and their line items
SELECT * FROM orders
JOIN "line_items" ON "line_items"."order_id"="orders"."id";

-- 3. which warehouses have cheetos?
SELECT * FROM "warehouse_product"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."id"=5;

-- 4. which warehouses have diet pepsi?
SELECT * FROM "warehouse_product"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."id"=6;

-- 5. get the number of orders for each customer. It is OK if those without orders are not included in results.
SELECT * FROM "orders"
JOIN "addresses" ON "orders"."address_id" = "addresses"."id"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id";

-- 6. how many customers do we have?
SELECT COUNT ("id")
FROM "customers";

-- 7. how many products do we carry?
SELECT COUNT ("id")
FROM "products";

-- 8. what is the total available on-hand quantity of diet pepsi?
SELECT SUM("on_hand")
FROM "warehouse_product"
WHERE "product_id" = 6;