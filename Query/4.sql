SELECT 
    (
        SELECT g.nama 
        FROM gudang g 
        WHERE g.gudang_ = k.gudang_
    ) AS nama_gudang,
    COUNT(k.karyawan_) AS jumlah_karyawan
FROM karyawan k
GROUP BY k.gudang_
ORDER BY 2 DESC;