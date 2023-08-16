# Banco de Dados da Oficina - Projeto e Consultas

Este repositório contém um projeto de banco de dados para uma oficina, juntamente com exemplos de consultas SQL para extrair informações relevantes do banco de dados. O projeto tem como objetivo gerenciar informações sobre clientes, veículos, serviços e ordens de serviço na oficina.

## Estrutura do Banco de Dados

O esquema lógico do banco de dados foi definido com base nas seguintes entidades e seus relacionamentos:

### Entidades:

1. **Cliente** (ID, Nome, Endereço, Telefone)
2. **Veículo** (ID, Modelo, Placa, Ano)
3. **Serviço** (ID, Nome, Preço)
4. **Ordem de Serviço** (ID, Cliente_ID, Veículo_ID, Data, Total)

### Relacionamentos:

- Um Cliente pode possuir vários Veículos.
- Uma Ordem de Serviço está associada a um Cliente e a um Veículo específico.
- Uma Ordem de Serviço pode incluir múltiplos Serviços.

## Consultas SQL

Aqui estão algumas consultas SQL que podem ser utilizadas para extrair informações úteis do banco de dados:

1. **Listar todos os clientes:**
   Recupera uma lista completa de todos os clientes cadastrados na oficina.

2. **Detalhes das ordens de serviço para um cliente específico:**
   Exibe informações detalhadas sobre as ordens de serviço realizadas por um cliente em particular, incluindo os veículos associados e as datas.

3. **Valor total gasto por cada cliente:**
   Calcula o total gasto por cada cliente com base nas ordens de serviço realizadas, auxiliando no acompanhamento financeiro dos clientes.

4. **Lista de veículos e os serviços associados a cada ordem de serviço:**
   Fornece uma visão das ordens de serviço realizadas e os serviços associados a cada veículo, permitindo a análise dos serviços mais frequentes.

## Uso

Este projeto pode ser utilizado como referência para o desenvolvimento e gerenciamento de um banco de dados de oficina. As consultas SQL podem ser adaptadas e personalizadas conforme necessário para atender às necessidades específicas do projeto.


