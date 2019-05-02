inisialisasi:- 
    write('**YAHYA AMIRUDIN NASRULLOH/170535629505**'),nl, 
    consult('/media/yahya/materi/Δ Smad-Lock (Brankas Smadav) Δ/KULIAH KU/SEMESTER 4/Prolog/tugas akhir/data.pl'), 
    judul(Judul),write(Judul),nl,nl,
    write_pesan,nl.

write_pesan:- 
    pesan(Pesan), 
    write(Pesan),nl,fail. 
write_pesan:- nl.

check(Jawab):- Jawab = y,main,nl,nl.
check(Jawab):- Jawab = t,fail.

pengamatan:-
    pertanyaan(Tanya, Observasi),
    write(Tanya),
    read(Jawaban),
    Jawaban =y,
    assert(observation(Observasi)),
    fail.
pengamatan.
delete:- retractall(observation(_)).
go:-
		
        write("Anda ingin mengulang lagi (y/t)?"),
		read(Jawab),nl,
        delete,
		check(Jawab).

main:-
    inisialisasi,
    write('masukan Nama : '),read(Nama),
    write('masukan Umur : '),read(Umur), 
    pengamatan, nl,
    rule(X,Y),
    jawaban(Y, Z),
    tindakan(Y,A),nl,
    write('pasien dengan nama '),write(Nama),
    write(' yang berumur '),write(Umur),
    write(Z),nl,
    write(A),nl,nl,
    go, 
    delete.
main:- 
    write('Maaf tidak dapat membantu!'),nl,nl, 
    delete.

