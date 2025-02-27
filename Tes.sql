-- membuat database
CREATE DATABASE Perpustakaan;

-- mengaktifkan database 
USE Perpustakaan;

-- membuat tabel
CREATE TABLE Anggota(
	ID_Anggota char(5) NOT NULL PRIMARY KEY,
    Nama varchar(50) NOT NULL,
    Alamat varchar(200) NOT NULL,
    No_Telp varchar(12) NOT NULL
);

-- Menampilkan isi tabel anggota
desc anggota;

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

-- CREATE TABLE Pustakawan(
-- 	ID_Pustakawan char(5) NOT NULL PRIMARY KEY,
--     Nama varchar(50) NOT NULL,
--     Alamat varchar(200) NOT NULL,
--     No_Telepon varchar(12) NOT NULL
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

CREATE TABLE Penulis(
	ID_Penulis char(5) NOT NULL PRIMARY KEY,
    Nama varchar(50) NOT NULL,
    Alamat varchar(200) NOT NULL,
    Bidang_Ilmu varchar(50) NOT NULL
);

-- CREATE TABLE Penulis_Buku(
-- 	ID_Penulis char(5) NOT NULL,
--     ID_Buku char(5) NOT NULL,
--     FOREIGN KEY (ID_Penulis) REFERENCES Penulis(ID_Penulis),
--     FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku)
-- );

-- CREATE TABLE Peminjaman_Buku(
-- 	ID_Peminjaman char(5) NOT NULL,
--     ID_Buku char(5) NOT NULL,
--     FOREIGN KEY (ID_Peminjaman) REFERENCES Peminjaman(ID_Peminjaman),
--     FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku)
-- );