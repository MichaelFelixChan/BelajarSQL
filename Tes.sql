-- tabel anggota (id_anggota, nama, alamat, no_telp)
-- tabel pustakawan (id_pustakawan, nama, alamat, no_telepon)
-- tabel penulis (id_penulis, nama, alamat, bidang_ilmu)
-- tabel buku (id_buku, judul, tahun_terbit, id_penerbit)
-- tabel penulisan (id_penulis, id_buku)
-- tabel peminjaman (id_peminjaman, tanggal_pinjam, lama_pinjam, tanggal_kembali, id_anggota, id_pustakawan)

-- Membuat database
CREATE DATABASE Perpustakaan;

-- Mengaktifkan database 
USE Perpustakaan;

-- Membuat tabel
CREATE TABLE Anggota(
	ID_Anggota char(5) NOT NULL PRIMARY KEY, -- Harusnya panjang data yaitu 10
    Nama varchar(50) NOT NULL, -- Harusnya panjang data nama yaitu 100
    Alamat varchar(200) NOT NULL,
    No_Telp varchar(12) NOT NULL -- Harusnya panjang data yaitu 25
);

-- Menampilkan isi tabel anggota
desc anggota;

CREATE TABLE Pustakawan(
	ID_Pustakawan char(10) NOT NULL PRIMARY KEY,
    Nama varchar(100) NOT NULL,
    Alamat varchar(200) NOT NULL,
    No_Telepon varchar(25) NOT NULL
);

CREATE TABLE Penulis(
	ID_Penulis char(5) NOT NULL PRIMARY KEY,
    Nama varchar(50) NOT NULL,
    Alamat varchar(200) NOT NULL,
    Bidang_Ilmu varchar(50) NOT NULL
);


-- CREATE TABLE Peminjaman(
-- 	ID_Peminjaman char(5) NOT NULL PRIMARY KEY,
--     ID_Anggota char(5) NOT NULL,
--     ID_Pustakawan char (5) NOT NULL,
--     TanggalPinjam date NOT NULL,
--     LamaPinjam int NOT NULL,
--     TanggalKembali date NOT NULL,
--     FOREIGN KEY (ID_Anggota) REFERENCES Anggota(ID_Anggota),
--     FOREIGN KEY (ID_Pustakawan) REFERENCES Pustakawan(ID_Pustakawan)
-- );

-- CREATE TABLE Buku(
-- 	ID_Buku char(5) NOT NULL PRIMARY KEY,
--     Judul varchar(50) NOT NULL,
--     Tahun_Terbit date NOT NULL,
--     ID_Penerbit char(5) NOT NULL,
--     FOREIGN KEY (ID_Penerbit) REFERENCES Penerbit(ID_Penerbit)
-- );

-- CREATE TABLE Penerbit(
-- 	ID_Penerbit char(5) NOT NULL PRIMARY KEY,
--     Nama_Penerbit varchar(50) NOT NULL,
--     Alamat varchar(200) NOT NULL,
--     No_Telepon varchar(12) NOT NULL
-- );

-- CREATE TABLE Penulisan(
-- 	ID_Penulis char(5) NOT NULL,
--     ID_Buku char(5) NOT NULL,
--     FOREIGN KEY (ID_Penulis) REFERENCES Penulis(ID_Penulis),
--     FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku)
-- );

-- CREATE TABLE Detail_Peminjaman(
-- 	ID_Peminjaman char(5) NOT NULL,
--     ID_Buku char(5) NOT NULL,
--     FOREIGN KEY (ID_Peminjaman) REFERENCES Peminjaman(ID_Peminjaman),
--     FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku)
-- );