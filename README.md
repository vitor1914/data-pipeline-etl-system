cat > README.md <<'EOF'
# Pipeline de Engenharia de Dados — Vendas
# Sales Data Engineering Pipeline

## 🇧🇷 Português

### Sobre o projeto

Este projeto implementa um pipeline de dados de vendas utilizando Python e SQLite. O objetivo é demonstrar um fluxo de Engenharia de Dados que envolve leitura, validação, transformação, armazenamento e análise de dados.

O pipeline processa um arquivo CSV, separa os registros válidos dos rejeitados, calcula o valor total de cada venda e carrega os dados tratados em um banco de dados SQLite.

### Objetivos

- Automatizar o processamento de dados de vendas.
- Validar e transformar dados de origem.
- Separar registros válidos e rejeitados.
- Calcular o valor total das vendas.
- Armazenar os dados em um banco de dados relacional.
- Criar consultas SQL para análise de negócios.

### Tecnologias utilizadas

- **Python:** processamento, validação e transformação dos dados.
- **CSV:** formato dos dados de entrada e saída.
- **SQLite:** armazenamento dos dados tratados.
- **SQL:** consultas e análises de vendas.
- **DB Browser for SQLite:** visualização e execução de consultas no banco.
- **Visual Studio Code:** ambiente de desenvolvimento.

### Estrutura do projeto

```text
engenharia-dados-pipeline/
├── dados/
│   ├── vendas.csv
│   ├── vendas_limpo.csv
│   └── vendas_rejeitadas.csv
├── src/
│   ├── pipeline.py
│   └── carregar_banco.py
├── banco/
│   └── vendas.db
├── sql/
│   └── consultas.sql
└── README.md