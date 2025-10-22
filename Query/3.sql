SELECT nama, stok
FROM barang
WHERE stok > (
    SELECT AVG(stok) FROM barang
);
