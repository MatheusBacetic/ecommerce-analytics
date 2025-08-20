# 🛒 Ecommerce Analytics — Data Case

<img src="/dashboard/Captura de tela 2025-08-19 142017.png" width="800">

**Problema:** entender e prever vendas de uma loja (faturamento, ticket médio, teste A/B).  
**Entregável:** pipeline de dados (ETL) + análises estatísticas + modelos preditivos + dashboard (Excel).  
**História:** *“Como eu usei dados de vendas para descobrir insights sobre compradores.”*
**Tecnologias:** Python, SQL, Excel

---

## 📂 Estrutura do projeto
```mermaid
graph TD
    A[ecommerce-analytics] --> B[dashboard 📊]
    A --> C[data 🗄️]
    A --> D[notebooks 📓]
    A --> E[processed 🔄]
    A --> F[sql 💾]
    A --> G[src ⚙️]
    A --> H[tests ✅]
    A --> I[.gitattributes]
    A --> J[.gitignore]
    A --> K[README.md]
    A --> L[requirements.txt]
```
---

## 📓 Notebooks

- **01_eda.ipynb** — análise exploratória: nulos, outliers, distribuições, correlações, gráficos.  
- **02_estatistica.ipynb** — intervalos de confiança, t-test A/B, qui-quadrado, correlações (Pearson/Spearman).  

---

## 🛠️ Stack

- **Python:** pandas, matplotlib 
- **PostgreSQL:** DDL, CTEs, funções janela, views  
- **Excel:** dashboards interativos e KPIs  





