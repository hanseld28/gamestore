# QUERIES FOR GAMESTORE DATABASE

# CONSULTAS ESTRATÉGICAS

## 1. Qual foi a quantidade de vendas da última semana?

- [x]  Buscar a quantidade de vendas da última semana, afim de saber se a meta semanal de vendas foi atingida.

## 2. Qual a quantidade de jogos que foram comprados por usuários que não possuiam a idade mínima recomendada para o jogo?

- [x]  Buscar os jogos com determinadas classificações indicativas
que foram comprados por usuários diferentes que não tinham a
idade mínima recomendada para comprá-los. Trazer a quantidade
de jogos que foram comprados violando essa condição.

## 3. Quantos jogos não foram comprados nos últimos 6 meses?

- [x]  Buscar a quantidade de jogos que não estão presentes em nenhuma das compras dos últimos 6 meses.

## 4. Qual a quantidade, em dias, desde a última compra realizada (registrada) no sistema? Quem a fez?

- [x]  Buscar o nome do usuário, a quantidade em dias desde a data dá última compra
realizada no sistema e a data registrada.

## QUERIES EXTRAS

- [ ]  Com base em todas as compra já realizadas, qual
dia da semana possui um número maior de compras
realizadas?

# CONSULTAS ANALÍTICAS

## 1. Qual foi o volume de vendas de cada mês do 1° semestre de 2020?

- [x]  Consulta que retorna o volume (quantidade) de vendas nos meses: janeiro, fevereiro, março, abril, maio e junho.

## 2. Qual foi o montante em R$ obtido das vendas nos últimos 6 meses com base em cada gênero de jogo?

- [x]  Consulta que retorne a soma dos valores de todas as vendas nos últimos 6
meses, agrupando pelo gênero dos jogos que foram vendidos.

## 3. Quais são os 10 jogos mais vendidos do 1º semestre do ano de 2020?

- [x]  Buscar o nome dos 10 jogos mais vendidos dos primeiros 6 meses do ano de 2020 e a quatidade de vezes que foi vendido.

## 4. Qual a quantidade de compras realizada por faixa etária?

- [x]  Consulta que retorne a quantidade de compras pelos usuários dentro das faixas etárias: 10 a 15 anos, 16 a 24 anos, 25 a 44 anos, 45 a 54 anos, 55 a 64 anos e 65 anos ou mais.

## QUERY EXTRA

- [ ]  Qual o valor total de cada uma das 5 primeiras datas em que foram
realizadas mais vendas?
    - Consulta que retorne a soma do valor das 5 primeiras datas com base nas
    maiores quantidade de compras.