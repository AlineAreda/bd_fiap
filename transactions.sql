--TCL (Transaction Control Language) no SQL é um conjunto de comandos usados para gerenciar as transações no banco de dados,
-- garantindo que as operações sejam realizadas de forma consistente e segura / integridade dos dados.

--Exemplo 1 com sucesso:
BEGIN;

--Suponha que vamos fazer duas opreações como parte de uma única transação
UPDATE acoes SET preco_atual = preco_atual - 5 WHERE simbolo= 'AAPL';
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (1, 1, 'VENDA', 2, 147.00);

--Se tudo estiver correto, commitamos a transaçaõ
COMMIT;

--Se algo der errado, podemos fazer o rollback antes do commit
--ROLLBACK;

--Exemplo 2 com ROLLBACK
BEGIN;

--Suponha que vamos fazer duas opreações como parte de uma única transação
UPDATE acoes SET preco_atual = preco_atual - 5 WHERE simbolo= 'AAPL';

--Inserindo uma nova transação
--Suponha que essa operação possa falhar por algum motivo, como uma constraint de FK não satisfeita
BEGIN;
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (1, 1, 'VENDA', 2, 147.00);
EXCEPTION WHEN OTHERS THEN
    --se algo der errado, o rollback na transação interna
  ROLLBACK TO SAVEPOINT;
END;

COMMIT;