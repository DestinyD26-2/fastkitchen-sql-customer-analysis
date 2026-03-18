-- Average order value
SELECT AVG(total) FROM fastkitchen.orders;

-- Orders by type
SELECT 
  order_type,
  AVG(total),
  AVG(tip),
  AVG(subtotal)
FROM fastkitchen.orders
GROUP BY order_type;

-- Registered vs guest orders
SELECT COUNT(*) 
FROM fastkitchen.orders
WHERE user_id IS NOT NULL;

SELECT COUNT(*) 
FROM fastkitchen.orders
WHERE user_id IS NULL;

-- Join example
SELECT *
FROM fastkitchen.orders o
LEFT JOIN fastkitchen.users u
ON o.user_id = u.user_id;

-- Spending by zip
SELECT 
  zip,
  AVG(total)
FROM fastkitchen.orders o
LEFT JOIN fastkitchen.users u
ON o.user_id = u.user_id
GROUP BY zip;
