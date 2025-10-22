SELECT nama
FROM gudang
WHERE gudang_ = (
    SELECT p.gudang_
    FROM penyimpanan p
    JOIN barang b ON p.barang_ = b.barang_
    GROUP BY p.gudang_
    ORDER BY SUM(b.harga * p.jumlah) DESC
    LIMIT 1
);
