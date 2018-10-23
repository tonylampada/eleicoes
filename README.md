# Eleicoes 2018

Esse projeto permite rodar algumas analises com pandas em cima dos dados eleitorais.
Vc pode abrir e visualizar os notebooks aqui no github tb (clica aí nos arquivos .ipynb que vc vai entender)

### 1. Preparando dados

Esse script baixa os [dados do TSE](http://www.tse.jus.br/eleicoes/estatisticas/repositorio-de-dados-eleitorais-1/repositorio-de-dados-eleitorais) e gera um csv simplificado (`out.txt`) com os votos de de presidente e governador

```
./geracsv.sh
```

Se vc não tiver linux pra rodar o `shellscript` acima, vc pode [baixar o out.txt](https://drive.google.com/open?id=1UWWphLctcE6cX1mXrkJk2onXSe7cm52j) que eu gerei.

### 2. Rodando os notebooks

```
pip install -r requirements.txt
jupyter notebook
```
