function baixaTudo() {
    baixa AC
    baixa AL
    baixa AM
    baixa AP
    baixa BA
    baixa CE
    baixa DF
    baixa ES
    baixa GO
    baixa MA
    baixa MG
    baixa MS
    baixa MT
    baixa PA
    baixa PB
    baixa PE
    baixa PI
    baixa PR
    baixa RJ
    baixa RN
    baixa RO
    baixa RR
    baixa RS
    baixa SC
    baixa SE
    baixa SP
    baixa TO
    wget -c http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_ZZ_111020181508.zip
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

function baixa() {
    sigla=$1
    wget -c http://agencia.tse.jus.br/estatistica/sead/eleicoes/eleicoes2018/buweb/BWEB_1t_${sigla}_101020181938.zip
}    

baixaTudo
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
