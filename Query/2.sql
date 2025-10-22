SELECT nama, jabatan
FROM karyawan
WHERE gudang_ = (
    SELECT gudang_ FROM gudang
    ORDER BY kapasitas DESC
    LIMIT 1
);
