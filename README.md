# 🛒 E-commerce Data Pipeline - Olist

Este projeto demonstra a construção de um pipeline de **Analytics Engineering** completo, utilizando dados reais do marketplace **Olist**. O objetivo é transformar dados brutos em insights de negócio, seguindo as melhores práticas de mercado.

## 🟢 Status do Projeto
- [x] Configuração de Ambiente (Python venv, dbt, DuckDB)
- [x] Ingestão de Dados (Python -> DuckDB)
- [ ] Transformação de Dados (dbt - Staging)
- [ ] Modelagem Dimensional (dbt - Marts)
- [ ] Dashboard Final

## 🛠️ Stack Tecnológica
- **Banco de Dados:** DuckDB (Data Warehouse Local de alta performance)
- **Transformação:** dbt-core (Modelagem, testes e documentação)
- **Linguagem:** Python (Scripts de ingestão dinâmica)
- **Documentação:** After Action Review (AAR)

## 📦 O Dataset
Utilizamos o **Brazilian E-Commerce Public Dataset by Olist**. Ele contém informações de 100 mil pedidos de 2016 a 2018, permitindo análises de:
- Ciclo de vida do pedido.
- Desempenho de categorias de produtos.
- Comportamento geográfico de clientes.

## 📂 Estrutura do Repositório
/pipeline_ecommerce
├── data/               # Banco dados.duckdb e arquivos brutos (.csv)
├── dbt_project/        # Modelagem dbt (Transformações)
├── scripts/            # Scripts Python para ingestão automatizada
├── venv/               # Ambiente virtual isolado
├── AAR.pdf             # Registro técnico de evolução (Diário de bordo)
└── README.md           # Contexto do projeto

## 🚀 Como Executar
Ative o ambiente:   .\venv\Scripts\activate

Rode a ingestão:    python scripts/ingestao_dados.py

Valide o dbt:       cd dbt_project -> dbt debug