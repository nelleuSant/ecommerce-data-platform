# Ecommerce Data Platform

## 📌 Visão Geral

Este projeto simula a construção de uma plataforma moderna de dados para uma empresa de e-commerce utilizando ferramentas open source.

O objetivo é implementar uma arquitetura completa de Engenharia de Dados, contemplando ingestão, orquestração, transformação e disponibilização de dados para análise.

---

## 🏗 Arquitetura

A solução segue o padrão ELT (Extract, Load, Transform):

PostgreSQL (OLTP - Camada Raw)  
→ Airflow (Orquestração - em construção)  
→ DuckDB (Data Warehouse Analítico - em construção)  
→ dbt (Transformações - em construção)  
→ Camada de BI (Dashboards - em construção)

---

## 🛠 Tecnologias Utilizadas

- Docker
- PostgreSQL
- Apache Airflow (planejado)
- DuckDB (planejado)
- dbt (planejado)
- Git & GitHub

---

## 📂 Estrutura do Projeto

```
ecommerce-data-platform/
│
├── docker-compose.yml
├── .env (ignorado pelo Git)
├── .gitignore
└── README.md
```
---

## 🚀 Status Atual

✅ Ambiente Docker configurado  
✅ PostgreSQL rodando em container  
✅ Schema transacional (raw) criado  
⏳ Integração com Airflow  
⏳ Criação da camada analítica (DuckDB)  
⏳ Transformações com dbt  
⏳ Construção de dashboards  

---

## 🔐 Variáveis de Ambiente

Credenciais sensíveis são armazenadas em arquivo `.env`, que não é versionado no repositório.

---

## 📈 Próximos Passos

- Implementar DAGs no Airflow para ingestão de dados
- Criar modelo dimensional (Star Schema) na camada analítica
- Implementar transformações e testes com dbt
- Construir dashboard com ferramenta open source
- Implementar validações de qualidade de dados
- Estruturar pipeline com boas práticas de versionamento

---

## 👩‍💻 Autora

Suellen Souza  
Projeto de Portfólio em Engenharia de Dados