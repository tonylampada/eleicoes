# roda aih na base do ctrl+chups

# cria banco
sudo su postgres
createuser -d -SRP eleicoes
createdb -O eleicoes eleicoes
exeit


# cria tabela
export PGPASSWORD=eleicoes
OPTS="-U eleicoes -d eleicoes -h localhost"
psql $OPTS -c "drop table votacao;"

psql $OPTS -c "
    CREATE TABLE votacao (
    uf character varying(2),
    cidade character varying(500),
    zona integer,
    secao integer,
    cargo character varying(30),
    candidato character varying(500),
    votos integer
);"

# popula banco
sudo su postgres
OPTS="-d eleicoes"
psql $OPTS -c "COPY votacao FROM '$(pwd)/out.txt' WITH (DELIMITER ';')"
exit
