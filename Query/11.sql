SELECT nama
FROM karyawan
WHERE karyawan_ = (
    SELECT karyawan_
    FROM pembelian_bm
    GROUP BY karyawan_
    ORDER BY SUM(total_harga) DESC
    LIMIT 1
);

