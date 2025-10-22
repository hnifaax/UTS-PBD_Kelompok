SELECT nama
FROM supplier
WHERE supplier_ = (
    SELECT supplier_
    FROM pembelian_bm
    GROUP BY supplier_
    ORDER BY COUNT(*) DESC
    LIMIT 1
);



