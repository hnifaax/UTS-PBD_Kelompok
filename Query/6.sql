SELECT nama
FROM gudang
WHERE gudang_ = (
    SELECT gudang_
    FROM penyimpanan
    GROUP BY gudang_
    ORDER BY SUM(jumlah) DESC
    LIMIT 1
);
