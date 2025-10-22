SELECT tgl_keluar, (
    SELECT ROUND(AVG(total_harga))
    FROM penjualan_bk p2
    WHERE p2.tgl_keluar = p1.tgl_keluar
) AS rata_penjualan
FROM penjualan_bk p1
GROUP BY tgl_keluar, p1.tgl_keluar;
