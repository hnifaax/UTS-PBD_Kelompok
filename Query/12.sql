SELECT nama
FROM distribusi
WHERE distribusi_ = (
    SELECT distribusi_
    FROM penjualan_bk
    GROUP BY distribusi_
    ORDER BY SUM(total_harga) DESC
    LIMIT 1
);


