CREATE TABLE Cliente (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

# Criando Esquema
CREATE TABLE Veiculo (
    ID INT PRIMARY KEY,
    Modelo VARCHAR(100),
    Placa VARCHAR(15),
    Ano INT
);

CREATE TABLE Servico (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

CREATE TABLE OrdemServico (
    ID INT PRIMARY KEY,
    Cliente_ID INT,
    Veiculo_ID INT,
    Data DATE,
    Total DECIMAL(10, 2),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID),
    FOREIGN KEY (Veiculo_ID) REFERENCES Veiculo(ID)
);


# Inserção de dados
INSERT INTO Cliente (ID, Nome, Endereco, Telefone) VALUES (1, 'João', 'Rua A, 123', '123-4567');
INSERT INTO Veiculo (ID, Modelo, Placa, Ano) VALUES (1, 'Fiat Uno', 'ABC-1234', 2020);
INSERT INTO Servico (ID, Nome, Preco) VALUES (1, 'Troca de Óleo', 50.00);
INSERT INTO OrdemServico (ID, Cliente_ID, Veiculo_ID, Data, Total) VALUES (1, 1, 1, '2023-08-16', 50.00);


# Consultas SQL
# Recuperação simples de todos os clientes
SELECT * FROM Cliente;

# Recuperação de ordens de serviço para um cliente específico
SELECT * FROM OrdemServico WHERE Cliente_ID = 1;

# Cálculo do total gasto por cada cliente
SELECT c.Nome, SUM(os.Total) AS TotalGasto
FROM Cliente c
JOIN OrdemServico os ON c.ID = os.Cliente_ID
GROUP BY c.Nome;

# Listagem de serviços realizados em cada ordem de serviço
SELECT os.ID, s.Nome AS ServicoRealizado
FROM OrdemServico os
JOIN Servico s ON os.Servico_ID = s.ID;

# Recuperação dos clientes que realizaram serviços acima de R$ 100
SELECT c.Nome
FROM Cliente c
JOIN OrdemServico os ON c.ID = os.Cliente_ID
WHERE os.Total > 100.00;

