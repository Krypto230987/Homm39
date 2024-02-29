SELECT supplier,SUM(price * qty)
FROM suppliers
JOIN actions ON supplier_id = actions.supplier_id
GROUP BY supplier
HAVING SUM(price * qty) > (SELECT SUM(price * qty) FROM actions WHERE supplier = 'IDT' AND YEAR(action_date) = 2016);