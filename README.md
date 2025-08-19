# 🛒 Ecommerce Analytics — Data Case

<img src="/dashboard/Captura de tela 2025-08-19 142017.png" width="800">

**Problema:** entender e prever vendas de uma loja (faturamento, ticket médio, teste A/B).  
**Entregável:** pipeline de dados (ETL) + análises estatísticas + modelos preditivos + dashboard (Excel).  
**História:** *“Como eu usei dados de vendas para descobrir insights de vendas.”*

---

## 📂 Estrutura do projeto
ecommerce-analytics/
  dashboard/
  data/
  notebooks/
  processed/
  sql/
  src/
  tests/
  .gitattributes
  .gitignore
  README
  requirements
---

## 📓 Notebooks

- **01_eda.ipynb** — análise exploratória: nulos, outliers, distribuições, correlações, gráficos.  
- **02_estatistica.ipynb** — intervalos de confiança, t-test A/B, qui-quadrado, correlações (Pearson/Spearman).  
- **03_modelos.ipynb** — regressão linear (drivers de ticket) e previsão de vendas (Prophet/ARIMA).  

---

## 🛠️ Stack

- **Python:** pandas, matplotlib 
- **PostgreSQL:** DDL, CTEs, funções janela, views  
- **Excel:** dashboards interativos e KPIs  




