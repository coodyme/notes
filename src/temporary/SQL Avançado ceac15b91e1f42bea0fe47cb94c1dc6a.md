# SQL Avançado

NULLIF - compara dois valores (v1, v2)

se v1 = v2 - retorna null

se v1 ≠ v2 - retorna v1

COALESCE - retorna o primeiro valor não nulo

CASE - para todo ‘case’ deve existir um ‘end’, e para todo ‘when’ deve existir um ‘then’. O ‘else’ existe sozinho, como última alternativa da função.

```sql
select nome, valor, case
    when valor = 100 then 'igual 100'
    when valor = 200 then 'igual 200'
    else 'maior que 200'
end from PRODUTO
where valor is not null
```

LOWER and UPPER

```sql
select lower(FIELD) from TABLE - seleciona com os campos em lower case
select upper(FIELD) from TABLE - selecionar com os campos em upper case

```

SUBSTR - extrair parte de um string 

```sql
select substring(FIELD from 1 for 5) from TABLE
```