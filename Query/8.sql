SELECT b.nama, (
    SELECT SUM(jumlah)
    FROM barangmasuk bm
    WHERE bm.barang_ = b.barang_
) AS total_masuk
FROM barang b;