SELECT g.nama AS gudang, (
    SELECT ROUND(AVG(b.harga))
    FROM penyimpanan p
    JOIN barang b ON p.barang_ = b.barang_
    WHERE p.gudang_ = g.gudang_
) AS rata_harga
FROM gudang g;

