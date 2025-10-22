SELECT b.nama, (
    SELECT SUM(jumlah)
    FROM barangkeluar bk
    WHERE bk.barang_ = b.barang_
) AS total_keluar
FROM barang b;
