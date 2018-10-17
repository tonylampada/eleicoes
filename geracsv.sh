function baixa() {
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_AC_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_AL_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_AM_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_AP_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_BA_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_CE_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_DF_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_ES_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_GO_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_MA_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_MG_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_MS_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_MT_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_PA_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_PB_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_PE_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_PI_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_PR_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_RJ_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_RN_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_RO_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_RR_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_RS_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_SC_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_SE_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_SP_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_TO_101020181938.zip
    wget http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_ZZ_111020181508.zip
}

function readstate() {
    sigla=$1
    rm -f *.csv
    rm -f *.pdf
    unzip BWEB_1t_${sigla}_*.zip
    cat bweb_1t_${sigla}_*.csv | \
        grep -a '";"Presidente";"' | cut -d ';' -f 10,12,13,14,17,29,30 | \
        iconv -f ISO-8859-1 -t UTF-8 | awk '{gsub(/\"/,"")};1' >> out.txt
    cat bweb_1t_${sigla}_*.csv | \
        grep -a '";"Governador";"' | cut -d ';' -f 10,12,13,14,17,29,30 | \
        iconv -f ISO-8859-1 -t UTF-8 | awk '{gsub(/\"/,"")};1' >> out.txt
    rm *.csv
    rm *.pdf
}

baixa
readstate AC
readstate AL
readstate AM
readstate AP
readstate BA
readstate CE
readstate DF
readstate ES
readstate GO
readstate MA
readstate MG
readstate MS
readstate MT
readstate PA
readstate PB
readstate PE
readstate PI
readstate PR
readstate RJ
readstate RN
readstate RO
readstate RR
readstate RS
readstate SC
readstate SE
readstate SP
readstate TO
readstate ZZ
