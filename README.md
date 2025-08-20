# 🛒 Ecommerce Analytics — Data Case

<img src="/dashboard/Captura de tela 2025-08-19 142017.png" width="800">

**Problema:** entender e prever vendas de uma loja (faturamento, ticket médio, teste A/B).  
**Entregável:** pipeline de dados (ETL) + análises estatísticas + modelos preditivos + dashboard (Excel).  
**História:** *“Como eu usei dados de vendas para descobrir insights sobre compradores.”*
---
### 📌 Resumo Executivo

As vendas apresentam **sazonalidade** ao longo do ano, com pico em maio.  
As categorias **Electronics, Clothing e Beauty** têm receitas semelhantes, mas **Electronics lidera** em faturamento.  
Clientes de **36–50 anos** concentram o maior gasto, enquanto o **ticket médio é praticamente igual entre homens e mulheres**.  

## 📂 Estrutura do projeto
```
ecommerce-analytics/
├── dashboard/      # Dashboards (Excel, Power BI)
├── data/           
│   ├── raw/        # Dados brutos
│   └── processed/  # Dados processados
├── notebooks/      # Jupyter notebooks (EDA, Modelos, Estatísticas)
├── sql/            # Scripts SQL (DDL, Queries)
├── src/            # Código ETL, features, utils
├── .gitattributes  
├── .gitignore      
├── README.md       
└── requirements.txt
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
## 🔎 Insights do EDA

1. **Receita mensal**  
   - A receita apresentou sazonalidade ao longo do ano.  
   - Picos de vendas em **maio (R$ 53.150)** e queda em **março (R$ 28.990)**.  

2. **Categorias mais lucrativas (receita total)**  
   | Categoria     | Receita (R$) |
   |---------------|--------------|
   | Electronics   | 156.905      |
   | Clothing      | 155.580      |
   | Beauty        | 143.515      |

   ➝ As três categorias têm valores próximos, indicando equilíbrio no portfólio.  

3. **Ticket médio por gênero**  
   | Gênero | Ticket Médio (R$) |
   |--------|--------------------|
   | Female | 456,55             |
   | Male   | 455,43             |

   ➝ Diferença mínima → não há evidência de que o gênero influencie o ticket médio.  

4. **Faixa etária que mais gasta**  
   | Faixa Etária | Receita (R$) |
   |--------------|--------------|
   | 36–50        | 139.660      |
   | 51–64        | 133.310      |
   | 26–35        | 98.480       |
   | 18–25        | 73.335       |

   ➝ Clientes de **36–50 anos** concentram maior parte da receita.  

5. **Volume de itens vendidos (quantidade)**  
   | Categoria     | Quantidade |
   |---------------|------------|
   | Clothing      | 894        |
   | Electronics   | 849        |
   | Beauty        | 771        |

   ➝ **Clothing** lidera em volume, mas **Electronics** gera mais receita (preço médio mais alto).  







