SELECT categories.category
FROM categories 
JOIN (
    SELECT DISTINCT supplier_id
    FROM actions
    WHERE action_date BETWEEN '2016-06-01' AND '2016-08-31'
) a ON supplier_id = supplier_id;


















