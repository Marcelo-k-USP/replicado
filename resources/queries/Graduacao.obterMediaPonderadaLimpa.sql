SELECT D.creaul, H.notfim, H.notfim2, D.cretrb
FROM HISTESCOLARGR H
INNER JOIN DISCIPLINAGR D ON H.coddis = D.coddis AND H.verdis = D.verdis
WHERE H.rstfim = 'A' -- Aluno aprovado na disciplina
    AND H.codpes = convert(int,:codpes)
    AND H.codpgm = __codpgm__ -- se for null vai pegar o max, se não o valor indicado no param