--exemplo DML com inserçaõ, atualização, busca e delete de dados no banco:
--DML (Data Manipulation Language): o DML lida com a manipulação de dados,
-- permitindo que os usuários insiram, atualizem e excluam registros em tabelas.


--Inserindo dados em investidores
INSERT INTO investidores (nome, email) VALUES ('João Silva', joao.silva@fiap.com.br);
INSERT INTO investidores (nome, email) VALUES ('Maria Oliveira', maria.oliveira@fiap.com.br)

--Inserindo dados em acoes
INSERT INTO acoes (simbolo, nome_empresa, preco_atual) VALUES ('AAPL', 'Apple Inc', 150.00);
INSERT INTO acoes (simbolo, nome_empresa, preco_atual) VALUES ('GOOGL', 'Alphabet Inc', 2800.00);

--Inserindo dados em transacoes
INSERT INTO transacoes (investidor_id, acao_id,tipo_transacao, quantidade, preco) VALUES ('1', '1','COMPRA', 10, 145.00);
INSERT INTO transacoes (investidor_id, acao_id,tipo_transacao, quantidade, preco) VALUES ('2', '2','COMPRA', 5, 2750.00);

--Atualizando preço da ação
UPDATE acoes SET preco_atual = 152.00 WHERE simbolo = 'AAPL';

--exemplo DELETE em transacoes
DELETE FROM transacoes WHERE transacao_id = 1;

--DQL (Data Query Language): o DQL é usado para consultar dados de tabelas, permitindo que os usuários recuperem informações específicas com base em critérios de pesquisa.
SELECT * from acoes WHERE simbolo = 'AAPL';


