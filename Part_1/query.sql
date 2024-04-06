SELECT 
  op.product_id AS productID, 
  (op.quantity * p.weight) AS totalWeight
FROM 
  orders_products AS op
JOIN 
  products AS p ON op.product_id = p.product_id
WHERE 
  op.order_id IN (
    SELECT 
      order_id 
    FROM 
      route_segments 
    WHERE 
      segment_end_time LIKE '%2024-02-13%' 
      AND segment_type = 'STOP'
  ) 
  AND op.order_id IN (
    SELECT 
      order_id 
    FROM 
      orders 
    WHERE 
      customer_id = 32
  )
ORDER BY 
  totalWeight;
