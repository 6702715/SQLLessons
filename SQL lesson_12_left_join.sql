SELECT id1, pname
FROM (
SELECT g.id id1, p.good_id id2, g.product_name pname
FROM dbo.goods g
LEFT JOIN dbo.purchases p ON g.id = p.good_id) m
WHERE m.id2 IS NULL
