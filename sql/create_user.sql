--Exemplo DCL na criação de usuários e definição de permissões de acesso a dados.
--DCL (Data Control Language): esta parte do SQL lida com permissões e privilégios de acesso aos dados, definindo quem pode realizar determinadas operações no banco de dados.

--criando usuário
CREATE USER analista WITH PASSWORD = '102030';

----docker exec
---- validar dentro do Container: psql -U analista -d db_fiap

--Concedendo permissões:
GRANT SELECT ON acoes TO analista;
GRANT SELECT ON transacoes TO analista;

--Testando o acesso
SELECT * FROM investidores;
SELECT * FROM acoes;

--Revogando permissões:
REVOKE SELECT ON transacoes FROM analista;