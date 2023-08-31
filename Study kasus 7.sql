create table dosen(
ID_dosen varchar(5) primary key,
nama varchar(50),
email varchar(50),
password_dosen varchar(20));

create table mata_kuliah(
ID_mk varchar(5) primary key,
mata_kuliah varchar(20));

create table mahasiswa(
ID_mahasiswa varchar(5) primary key,
nama varchar(50),
ID_mk varchar(5),
email varchar(50),
password_mahasiswa varchar(20),
foreign key (ID_mk) references mata_kuliah (ID_mk));

create table staf(
ID_staf varchar(5) primary key,
nama_staf varchar(50),
password_staf varchar(50));

create table jadwal_mata_kuliah(
ID_jadwal varchar(5) primary key,
ID_mahasiswa varchar(5),
ID_dosen varchar(5),
ID_mk varchar(5),
hari date,
ruangan varchar(20),
semester varchar(20),
foreign key (ID_mahasiswa) references mahasiswa(ID_mahasiswa),
foreign key (ID_dosen) references dosen(ID_dosen),
foreign key (ID_mk) references mata_kuliah(ID_mk));

create table log_aktivitas(
ID_staf varchar(5),
ID_jadwal varchar(5),
tingkat_akses varchar(20),
waktu_login datetime,
waktu_logout datetime,
foreign key (ID_staf) references staf(ID_staf),
foreign key (ID_jadwal) references jadwal_mata_kuliah(ID_jadwal));

insert into dosen values
('','','',''),
('','','',''),
('','','',''),
('','','',''),
('','','','');

insert into mata_kuliah values
('',''),
('',''),
('',''),
('',''),
('','');

insert into mahasiswa values
('','','','',''),
('','','','',''),
('','','','',''),
('','','','',''),
('','','','','');

insert into staf values
('','',''),
('','',''),
('','',''),
('','',''),
('','','');

insert into jadwal_mata_kuliah values
('','','','','','',''),
('','','','','','',''),
('','','','','','',''),
('','','','','','',''),
('','','','','','','');

insert into log_aktivitas values
('','','','',''),
('','','','',''),
('','','','',''),
('','','','',''),
('','','','','');
