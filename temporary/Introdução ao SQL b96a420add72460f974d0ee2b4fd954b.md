# Introdução ao SQL

# Introdução a linguagem SQL

DDL

CREATE TABLE

```sql
CREATE TABLE Contato (
    Id int,
    Nome varchar(255),
    Telefone varchar(11)
);
```

DROP TABLE

```sql
DROP TABLE Contato
```

ALTER TABLE

```sql
ALTER TABLE Contato
Add email VARCHAR(255)
```

DML/DQL

INSERT

```sql
INSERT INTO Cliente(nome, telefone)
VALUES ('Suzana', '99999-9999')
```

DELETE

```sql
DELETE FROM Cliente WHERE id = 2
```

UPDATE

```sql
UPDATE PRODUTO SET VALOR = 200  WHERE NOME = 'GELADEIRA'
```

SELECT

```sql
SELECT nome, telefone FROM Cliente 
SELECT * FROM PRODUTO /* Seleciona todos os dados da tabela */
```