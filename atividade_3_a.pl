aviao(falcao).
aviao(gaviao).
aviao(gaivota).

passageiro(guilherme).
passageiro(juao).

voa(guilherme, falcao).
voa(juao, gaviao).

lugar(canada).
lugar(usa).
lugar(france).

destino(falcao, canada).
destino(gaviao, usa).
destino(gaivota, france).

piloto(jose).
piloto(geraldinho).
piloto(ash).

aeromoca(rosita).
aeromoca(star).
aeromoca(violet).

pilota(jose,falcao).
pilota(geraldinho, gaivota).
pilota(ash, gaviao).

trabalha(rosita, falcao).
trabalha(violet, falcao).
trabalha(star, gaivota).

equipe(X) :- trabalha(Y, X), pilota(Z, X), write(Y), nl, write(Z), nl.
atende(X) :- trabalha(X, Y), voa(Z, Y), write(Z), nl.
vai(X) :- voa(X, Y), destino(Y, Z), write(Z), nl.

/* CONSULTAS */

/* 1) Consultar a equipe do gaivota*/
write("equipe do gaivota"), nl,
equipe(gaivota);

/* 2) passegeiro que é atendido pela violet */
write("atendido pela violet"), nl,
atende(violet);

/* 3) listar pessoas que vão para os estados unidos */
write("pessoas que vão para os estados unidos"), nl,
voa(X, Y), destino(Y, usa), write(X), nl;

/* 4) mostrar destino de guilherme */
write("destino de guilherme"), nl,
vai(guilherme);

/* 5) destino do piloto ash */
write("destino do piloto ash"), nl,
pilota(ash, Y), destino(Y, Z), write(Z), nl