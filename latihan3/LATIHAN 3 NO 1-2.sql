CREATE TABLE dosen_wali (
	id bigint primary key,
	NIP bigint,
	nama varchar (255),
	tanggal_lahir date,
	alamat varchar (255),
	no_hp int
	);

create table mahasiswa (
	 id bigint primary key,
	 NPM int,
	 nama varchar (255),
	 tanggal_lahir date,
	 alamat varchar,
	 no_hp int,
	 jurusan_id bigint foreign key references jurusan(id),
	 dosen_wali_id bigint foreign key references dosen_wali(id)
 );

 alter table jurusan 
 ALTER COLUMN nama_jurusan varchar;
