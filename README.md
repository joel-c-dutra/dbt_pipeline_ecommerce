# 🛒 E-commerce Data Pipeline - Olist

[cite_start]Este repositório contém um pipeline completo de **Analytics Engineering** utilizando ferramentas modernas e gratuitas. [cite: 2] [cite_start]O projeto transforma dados brutos do marketplace Olist em insights de negócio prontos para análise. [cite: 9]

## 🟢 Status do Projeto
- [x] [cite_start]**Configuração de Ambiente:** Python venv, DuckDB e dbt-core integrados. [cite: 5, 6]
- [x] [cite_start]**Ingestão de Dados:** Automação via Python carregando CSVs para o esquema `raw`. [cite: 14, 17]
- [x] [cite_start]**Transformação (Staging):** Padronização e limpeza de Clientes, Pedidos e Itens. [cite: 20]
- [ ] [cite_start]**Modelagem Dimensional:** Criação de tabelas Fato e Dimensão (Marts). [cite: 22]
- [ ] [cite_start]**Visualização:** Dashboard interativo no Looker Studio. [cite: 7]

## 🛠️ Stack Tecnológica
- [cite_start]**Python:** Processamento e orquestração da ingestão. [cite: 4]
- [cite_start]**DuckDB:** Data Warehouse local de alta performance. [cite: 5]
- [cite_start]**dbt-core:** Transformações SQL, testes e linhagem. [cite: 6]
- [cite_start]**Git/GitHub:** Versionamento e documentação do ciclo de vida (AAR). [cite: 8, 30]

## [cite_start]📂 Estrutura do Repositório [cite: 38]
- [cite_start]`/data`: Arquivos brutos (.csv) e banco de dados (.duckdb). [cite: 40, 41]
- [cite_start]`/dbt_project`: Modelos de transformação SQL (Staging e Marts). [cite: 42, 43]
- [cite_start]`/scripts`: Scripts Python para automação de carga. [cite: 45]
- [cite_start]`AAR.pdf`: Documentação detalhada de aprendizados e desafios. [cite: 47]

## 🚀 Como Executar
1. Ative a venv: `.\venv\Scripts\activate`
2. Ingestão: `python scripts/ingestao_dados.py`
3. Transformação: `cd dbt_project` -> `dbt run`