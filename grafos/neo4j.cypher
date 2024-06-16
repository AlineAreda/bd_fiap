// Criar Funcionário
CREATE (alice:Employee {name: "Alice", department: "Trading"})
CREATE (bob:Employee {name: "Bob", department: "Research"})

// Criar Entidade Externa
CREATE (charlie:ExternalEntity {name: "Charlie", type: "Individual"})

// Criar Comunicação
CREATE (email1:Communication {type: "Email", date: "2024-06-15", content: "Confidential investment tip"})
CREATE (call1:Communication {type: "Call", date: "2024-06-15", content: "Discuss investment strategy"})

// Criar Transação
CREATE (trans1:Transaction {date: "2024-06-15", amount: 5000, stock: "XYZ Corp"})

// Estabelecer Relacionamentos
MERGE (alice)-[:ENVIAR_COMUNICACAO]-> (email1)-[:DESTINADO_A]-> (charlie)
MERGE (bob)-[:ENVIAR_COMUNICACAO]-> (call1)-[:DESTINADO_A]-> (alice)
MERGE (alice)-[:REALIZAR_TRANSACAO]-> (trans1)

// Identificar Comunicações com Entidades Externas antes de grandes Transações:
MATCH (e:Employee)-[:ENVIAR_COMUNICACAO]-> (c:Communication)-[:DESTINADO_A]-> (ext:ExternalEntity),
      (e)-[:REALIZAR_TRANSACAO]-> (t:Transaction)
WHERE c.date < t.date
RETURN e.name AS Funcionario, ext.name AS EntidadeExterna, c.type AS TipoComunicacao, t.stock AS Acao, t.amount AS Quantidade
