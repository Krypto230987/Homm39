SELECT products.product
FROM products
WHERE products.product NOT IN ( SELECT id FROM suppliers WHERE supplier = 'IDT' );