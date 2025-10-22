SELECT nama, lokasi, kapasitas
FROM gudang
WHERE kapasitas > (SELECT AVG(kapasitas) FROM gudang);
