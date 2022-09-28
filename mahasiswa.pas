program data_mhs;
uses crt;
type
   maba = record
      nim      : string[20];
      nama     : string[50];
      tugas    : real;
      uts      : real;
      uas      : real;
      grade    : char;
      nilai    : real;
end;
var
   mhs : array [1..10] of maba;
   byk,i : integer;
   pilih : byte;
begin
repeat
   clrscr;
   textcolor(10);
   gotoxy(23,2);
   writeln('|-------------------------------|');
   gotoxy(23,3);
   writeln('| MENU UTAMA APLIKASI MAHASISWA |');
   gotoxy(23,4);
   writeln('|-------------------------------|');
   gotoxy(23,5);
   writeln('| 1. Input Data Nilai Mahasiswa |');
   gotoxy(23,6);
   writeln('| 2. Daftar Nilai Mahasiswa     |');
   gotoxy(23,7);
   writeln('| 3. Keluar Program             |');
   gotoxy(23,8);
   writeln('|-------------------------------|');
   gotoxy(25,9);
   write('Pilih Menu 1-3 : ');readln(pilih);
   writeln();
   case pilih of
   1:begin
   clrscr;
   gotoxy(25,2);
   writeln('[ Input Data Nilai Mahasiswa ]');
   writeln();
   write('Input Jumlah Mahasiswa : '); readln(byk);
   writeln('============================');
   for i := 1 to byk do
   begin
      with mhs[i] do
      begin
         writeln('Data Mahasiswa Ke : ',i);
         write('NIM     : '); readln(nim);
         write('Nama    : '); readln(nama);
         write('Tugas   : '); readln(tugas);
         write('UTS     : '); readln(uts);
         write('UAS     : '); readln(uas);
         nilai := (tugas + uts +uas) / 3;
            if (nilai >= 80) then grade := 'A' else
            if (nilai < 80) and (nilai >= 70) then grade := 'B' else
            if (nilai < 70) and (nilai >= 60) then grade := 'C' else
            if (nilai < 60) and (nilai >= 50) then grade := 'D' else
            grade :='E';
      end;
      writeln();
      writeln('----------------------------');
   end;
   readln;
   end;
   2:begin
   clrscr;
   gotoxy(30,1);
   writeln('Daftar Hasil Nilai Mahasiswa');
   writeln('|============================================================================|');
   writeln('|NO.|     NIM      |  NAMA MAHASISWA  | TUGAS |  UTS  |  UAS  |  NA  | GRADE |');
   writeln('|----------------------------------------------------------------------------|');
   for i := 1 to byk do
   begin
    With mhs[i] Do
        Begin
             gotoxy(3, 4+i); Writeln(i);
             gotoxy(7, 4+i); write(nim);
             gotoxy(22, 4+i); write(nama);
             gotoxy(41, 4+i); write(tugas:2:2);
             gotoxy(49, 4+i); write(uts:2:2);
             gotoxy(57, 4+i); write(uas:2:2);
             gotoxy(65, 4+i); write(nilai:2:2);
             gotoxy(74, 4+i); write(grade);
        end;
   end;
   writeln();
   writeln();
   writeln('==============================================================================');
   write('Tekan Enter Untuk Kembali Kemenu Utama...');
   readln;
   end;
   3:begin
   clrscr;
   gotoxy(1,2);
   writeln('Terima kasih Telah Menggunakan Program Ini');
   writeln('My Channel Youtube : EXPLOIT1337');
   end;
   end;
   writeln('=============================================');
   write('Tekan Enter Untuk Menutup Program...')
until (pilih = 3);
readln;
end.


