pertanyaan('apakah suhu terasa panas ? ', panas).
pertanyaan('apakah ada asap ? ', asap).
pertanyaan('apakah alarm berbunyi ? ', alarm_bunyi).

pengamatan:-
    pertanyaan(Tanya, Observasi),
    write(Tanya), nl,
    read(Jawaban),
    Jawaban =y,
    assert(observation(Observasi)),
    fail.
pengamatan.

aturan(1, smoke) :- not(observation(panas)),observation(asap),observation(alarm_bunyi).
aturan(2, fire) :- observation(panas), observation(asap), observation(alarm_bunyi).

jawaban(fire, 'Terjadi Kebakaran').
jawaban(smoke, 'Terdeteksi Asap').

delete:- retractall(observation(_)).

main:-
    pengamatan, nl,
    aturan(X, Y),
    jawaban(Y, Z),
    write(Z), nl,
    delete.

