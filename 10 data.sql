CREATE TABLE gudang (
    gudang_ SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    lokasi VARCHAR(100),
    kontak VARCHAR(50),
    kapasitas INT
);

CREATE TABLE karyawan (
    karyawan_ SERIAL PRIMARY KEY,
    gudang_ INT REFERENCES gudang(gudang_),
    nama VARCHAR(100),
    jabatan VARCHAR(50),
    no_hp VARCHAR(20),
    alamat TEXT
);

CREATE TABLE supplier (
    supplier_ SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    kontak VARCHAR(50),
    alamat TEXT
);

CREATE TABLE distribusi (
    distribusi_ SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    kontak VARCHAR(50),
    alamat TEXT
);

CREATE TABLE barang (
    barang_ SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    harga NUMERIC(12,2),
    stok INT
);

CREATE TABLE pembelian_bm (
    id_pembelian SERIAL PRIMARY KEY,
    karyawan_ INT REFERENCES karyawan(karyawan_),
    supplier_ INT REFERENCES supplier(supplier_),
    tgl_masuk DATE,
    total_harga NUMERIC(12,2)
);

CREATE TABLE barangmasuk (
    id_bm SERIAL PRIMARY KEY,
    barang_ INT REFERENCES barang(barang_),
    id_pembelian INT REFERENCES pembelian_bm(id_pembelian),
    jumlah INT,
    sub_total NUMERIC(12,2)
);

CREATE TABLE penjualan_bk (
    id_penjualan_bk SERIAL PRIMARY KEY,
    karyawan_ INT REFERENCES karyawan(karyawan_),
    distribusi_ INT REFERENCES distribusi(distribusi_),
    tgl_keluar DATE,
    total_harga NUMERIC(12,2)
);

CREATE TABLE barangkeluar (
    id_bk SERIAL PRIMARY KEY,
    barang_ INT REFERENCES barang(barang_),
    id_penjualan_bk INT REFERENCES penjualan_bk(id_penjualan_bk),
    jumlah INT,
    sub_total NUMERIC(12,2)
);

CREATE TABLE penyimpanan (
    gudang_ INT REFERENCES gudang(gudang_),
    barang_ INT REFERENCES barang(barang_),
    jumlah INT,
    PRIMARY KEY (gudang_, barang_)
);


INSERT INTO gudang (nama, lokasi, kontak, kapasitas) VALUES
('Gudang Utama A', 'Jakarta', '021-555-1234', 5000),
('Gudang Cabang B', 'Bandung', '022-444-5678', 3000),
('Gudang Cikarang', 'Bekasi', '021-333-9999', 4500),
('Gudang Surabaya', 'Surabaya', '031-777-1212', 4000),
('Gudang Medan', 'Medan', '061-123-4567', 3500),
('Gudang Bali', 'Denpasar', '0361-111-222', 2500),
('Gudang Yogya', 'Yogyakarta', '0274-987-111', 2800),
('Gudang Makassar', 'Makassar', '0411-123-321', 3200),
('Gudang Samarinda', 'Samarinda', '0541-234-888', 2700),
('Gudang Palembang', 'Palembang', '0711-432-555', 3000);

INSERT INTO karyawan (gudang_, nama, jabatan, no_hp, alamat) VALUES
(1, 'Rizal', 'Kepala Gudang', '0812-1111-2222', 'Jl. Mawar No.1 Jakarta'),
(2, 'Alya', 'Admin Gudang', '0813-2222-3333', 'Jl. Sukajadi No.2 Bandung'),
(3, 'Dian', 'Staf Gudang', '0814-3333-4444', 'Jl. Cikarang Baru No.3 Bekasi'),
(4, 'Bagus', 'Kepala Gudang', '0815-4444-5555', 'Jl. Darmo No.4 Surabaya'),
(5, 'Winda', 'Staf Gudang', '0816-5555-6666', 'Jl. Setia Budi No.5 Medan'),
(6, 'Fajar', 'Admin Gudang', '0817-6666-7777', 'Jl. Gatot Subroto No.6 Denpasar'),
(7, 'Sinta', 'Kepala Gudang', '0818-7777-8888', 'Jl. Kaliurang No.7 Yogyakarta'),
(8, 'Tono', 'Staf Gudang', '0819-8888-9999', 'Jl. Pettarani No.8 Makassar'),
(9, 'Maya', 'Admin Gudang', '0821-9999-0000', 'Jl. AW Syahranie No.9 Samarinda'),
(10, 'Hendra', 'Kepala Gudang', '0822-0000-1111', 'Jl. Demang Lebar Daun No.10 Palembang');

INSERT INTO supplier (nama, kontak, alamat) VALUES
('PT Sumber Makmur', '0812-3333-4444', 'Jakarta'),
('CV Berkah Abadi', '0813-5555-6666', 'Bandung'),
('PT Indo Sukses', '0814-7777-8888', 'Surabaya'),
('PT Mega Supply', '0815-9999-0000', 'Bekasi'),
('CV Sentosa Jaya', '0816-1111-2222', 'Medan'),
('PT Nusantara', '0817-3333-4444', 'Denpasar'),
('CV Mandiri', '0818-5555-6666', 'Yogyakarta'),
('PT Prima Jaya', '0819-7777-8888', 'Makassar'),
('CV Kaltim Utama', '0820-9999-0000', 'Samarinda'),
('PT Sumsel Abadi', '0821-1111-2222', 'Palembang');

INSERT INTO distribusi (nama, kontak, alamat) VALUES
('PT Logistik Cepat', '0812-2222-3333', 'Jakarta'),
('CV Angkut Jaya', '0813-3333-4444', 'Bandung'),
('PT Kirim Lancar', '0814-4444-5555', 'Surabaya'),
('CV Antar Sukses', '0815-5555-6666', 'Bekasi'),
('PT Distribusi Hebat', '0816-6666-7777', 'Medan'),
('CV GoTrans', '0817-7777-8888', 'Denpasar'),
('PT Kirim Cepat', '0818-8888-9999', 'Yogyakarta'),
('CV Logistik Mandiri', '0819-9999-0000', 'Makassar'),
('PT Samudra Trans', '0820-0000-1111', 'Samarinda'),
('CV Cipta Kargo', '0821-1111-2222', 'Palembang');

INSERT INTO barang (nama, harga, stok) VALUES
('Karton A4', 50000, 200),
('Pulpen Hitam', 4000, 500),
('Tinta Printer', 150000, 100),
('Kertas HVS', 60000, 300),
('Stapler Besar', 45000, 150),
('Buku Tulis', 10000, 400),
('Map Plastik', 3000, 600),
('Spidol', 7000, 350),
('Amplop Coklat', 2500, 500),
('Lakban', 8000, 250);

INSERT INTO pembelian_bm (karyawan_, supplier_, tgl_masuk, total_harga) VALUES
(1, 1, '2025-10-01', 1000000),
(2, 2, '2025-10-02', 750000),
(3, 3, '2025-10-03', 900000),
(4, 4, '2025-10-04', 850000),
(5, 5, '2025-10-05', 1100000),
(6, 6, '2025-10-06', 950000),
(7, 7, '2025-10-07', 1200000),
(8, 8, '2025-10-08', 880000),
(9, 9, '2025-10-09', 920000),
(10, 10, '2025-10-10', 1000000);

INSERT INTO barangmasuk (barang_, id_pembelian, jumlah, sub_total) VALUES
(1, 1, 20, 1000000),
(2, 2, 150, 600000),
(3, 3, 10, 900000),
(4, 4, 15, 900000),
(5, 5, 20, 900000),
(6, 6, 50, 500000),
(7, 7, 100, 300000),
(8, 8, 40, 280000),
(9, 9, 80, 200000),
(10, 10, 30, 240000);

INSERT INTO penjualan_bk (karyawan_, distribusi_, tgl_keluar, total_harga) VALUES
(1, 1, '2025-10-11', 700000),
(2, 2, '2025-10-12', 600000),
(3, 3, '2025-10-13', 800000),
(4, 4, '2025-10-14', 900000),
(5, 5, '2025-10-15', 750000),
(6, 6, '2025-10-16', 820000),
(7, 7, '2025-10-17', 950000),
(8, 8, '2025-10-18', 870000),
(9, 9, '2025-10-19', 790000),
(10, 10, '2025-10-20', 880000);

INSERT INTO barangkeluar (barang_, id_penjualan_bk, jumlah, sub_total) VALUES
(1, 1, 10, 500000),
(2, 2, 100, 400000),
(3, 3, 5, 750000),
(4, 4, 10, 600000),
(5, 5, 15, 675000),
(6, 6, 30, 300000),
(7, 7, 60, 180000),
(8, 8, 25, 175000),
(9, 9, 40, 100000),
(10, 10, 20, 160000);

INSERT INTO penyimpanan (gudang_, barang_, jumlah) VALUES
(1, 1, 50),
(2, 2, 100),
(3, 3, 30),
(4, 4, 40),
(5, 5, 35),
(6, 6, 60),
(7, 7, 70),
(8, 8, 45)
(9, 9, 55),
(10, 10, 25);