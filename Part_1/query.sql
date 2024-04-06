SELECT 
  product_id as productID, weight as totalWeight
FROM 
  products 
WHERE 
  product_id IN(
    SELECT 
      product_id 
    FROM 
      orders_products 
    WHERE 
      order_id IN (
        SELECT 
          order_id 
        FROM 
          route_segments 
        WHERE 
          segment_end_time LIKE '%2024-02-13%' 
          AND segment_type = 'STOP'
      ) 
      AND order_id IN (
        SELECT 
          order_id 
        FROM 
          orders 
        WHERE 
          customer_id = 32
      )
  )
  ORDER BY weight;

