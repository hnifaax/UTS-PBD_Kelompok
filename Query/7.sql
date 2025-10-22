SELECT nama
FROM karyawan
WHERE karyawan_ = (
    SELECT karyawan_
    FROM penjualan_bk
    GROUP BY karyawan_
    ORDER BY COUNT(*) DESC
    LIMIT 1
);