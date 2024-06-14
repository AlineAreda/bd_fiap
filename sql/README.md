#  Introdução ao SQL

## O que é SQL?

A Structured Query Language (SQL) é uma linguagem de consulta estruturada projetada para interagir com sistemas de gerenciamento de bancos de dados relacionais. Ela permite que os usuários criem, modifiquem e consultem dados de maneira eficaz, seguindo um conjunto de regras e comandos bem definidos.

A linguagem SQL é usada para executar diversas tarefas, como criação de tabelas, inserção de dados, recuperação de informações e definição de restrições de integridade.

Para que possamos entender melhor o SQL, confira uma lista contendo seus principais componentes:

**DDL (Data Definition Language)**: essa parte do SQL é usada para definir e gerenciar estruturas de bancos de dados, incluindo a criação, alteração e exclusão de tabelas, índices e outros objetos do banco de dados.

**DML (Data Manipulation Language)**: o DML lida com a manipulação de dados, permitindo que os usuários insiram, atualizem e excluam registros em tabelas.

**DQL (Data Query Language)**: o DQL é usado para consultar dados de tabelas, permitindo que os usuários recuperem informações específicas com base em critérios de pesquisa.

**DCL (Data Control Language)**: esta parte do SQL lida com permissões e privilégios de acesso aos dados, definindo quem pode realizar determinadas operações no banco de dados.

**TCL (Transaction Control Language)** no SQL é um conjunto de comandos usados para gerenciar as transações no banco de dados, garantindo que as operações sejam realizadas de forma consistente e segura. As transações permitem agrupar uma ou mais operações SQL em uma unidade lógica de trabalho que pode ser confirmada ou revertida.

## **Os principais comandos TCL:**

1.  **COMMIT**: Confirma todas as mudanças feitas pela transação atual, tornando-as permanentes no banco de dados.
2.  **ROLLBACK**: Reverte todas as mudanças feitas pela transação atual, desfazendo qualquer modificação desde o último COMMIT.
3.  **SAVEPOINT**: Cria um ponto de salvamento dentro de uma transação, permitindo a execução de um rollback parcial até esse ponto específico.
4.  **RELEASE SAVEPOINT**: Remove um ponto de salvamento previamente definido.
5.  **SET TRANSACTION**: Configura características específicas para a transação atual, como o nível de isolamento.

Esses comandos ajudam a garantir a integridade dos dados e a consistência das operações em um banco de dados relacional.

## PostgreSQL

O PostgreSQL é um sistema de gerenciamento de banco de dados relacional de código aberto, amplamente respeitado por sua robustez e recursos avançados. Ele é conhecido por sua confiabilidade, escalabilidade e riqueza de recursos, tornando-se uma escolha para diversas aplicações, desde pequenos projetos até grandes empresas.

### Características do PostgreSQL

-   **Conformidade com padrões**: o PostgreSQL segue rigorosamente os padrões SQL, garantindo que pessoas desenvolvedoras possam escrever consultas SQL compatíveis com a maioria dos sistemas de gerenciamento de banco de dados relacionais.
-   **Extensibilidade**: uma das características mais notáveis do PostgreSQL é sua capacidade de ser estendido. Desenvolvedores(as) podem criar funções personalizadas, tipos de dados, operadores e muito mais, o que o torna altamente adaptável às necessidades específicas do projeto.
-   **Suporte a dados não-estruturados**: além de dados tabulares tradicionais, o PostgreSQL oferece suporte a dados semi-estruturados e JSON, sendo adequado para aplicativos web modernos e serviços de API.
-   **Transações ACID**: o PostgreSQL garante transações ACID (Atomicidade, Consistência, Isolamento e Durabilidade); portanto, é confiável para aplicações que exigem alta integridade e segurança dos dados.
-   **Replicação e alta disponibilidade**: o PostgreSQL oferece opções de replicação, permitindo a criação de ambientes de alta disponibilidade para minimizar o tempo de inatividade.
-   **Desempenho**: o PostgreSQL é conhecido por seu desempenho sólido e por sua otimização de consultas, tornando-o adequado para ambientes de alto tráfego e grandes volumes de dados.

----------

### Por que escolher o PostgreSQL?

Agora que conhecemos o SQL e sabemos o que é o PostgreSQL, que tal criarmos o nosso primeiro banco de dados em uma cloud gratuita? Para isso, utilizaremos o Supabase neste material de apoio, para que, na nossa aula prática, possamos criá-lo na AWS, utilizando o RDS.

## Amazon RDS

### Principais Características do Amazon RDS:

-   **Multi-Engine Support**: o RDS suporta vários motores de banco de dados relacionais, incluindo MySQL, PostgreSQL, MariaDB, Oracle e Microsoft SQL Server.
-   **Gerenciamento automático**: o RDS gerencia automaticamente tarefas operacionais, como provisionamento de hardware, aplicação de patches de software, backups regulares e monitoramento de desempenho.
-   **Backup e recuperação automáticos**: o RDS oferece backups automáticos diários e retenção configurável, permitindo restaurar facilmente o banco de dados para um ponto específico no tempo.
-   **Alta disponibilidade**: configurações de alta disponibilidade, como Multi-AZ deployments, estão disponíveis para melhorar a resiliência do sistema. Isso envolve a replicação automática de dados para uma instância secundária em uma zona de disponibilidade diferente.
-   **Escalabilidade vertical e horizontal**: é possível ajustar a capacidade computacional da instância do banco de dados (escalabilidade vertical) ou adicionar réplicas de leitura para distribuir a carga (escalabilidade horizontal).
-   **Segurança**: o RDS oferece recursos de segurança robustos, incluindo criptografia em repouso e em trânsito, controle de acesso baseado em IAM (Identity and Access Management) e a capacidade de implantar bancos de dados em uma VPC (Virtual Private Cloud) para maior isolamento.
-   **Monitoramento e métricas**: o RDS fornece métricas detalhadas de desempenho e eventos por meio do Amazon CloudWatch, permitindo monitorar e ajustar a configuração conforme necessário.