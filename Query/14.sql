SELECT nama
FROM barang
WHERE barang_ = (
    SELECT p.barang_
    FROM penyimpanan p
    JOIN barang b ON p.barang_ = b.barang_
    ORDER BY ABS(b.stok - p.jumlah) DESC
    LIMIT 1
);
