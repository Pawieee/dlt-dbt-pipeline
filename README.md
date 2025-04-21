# Google Sheets ELT Pipeline with dlt, PostgreSQL, and dbt

This project demonstrates a simple ELT (Extract, Load, Transform) pipeline that:
- Extracts data from **Google Sheets** using [`dlt`](https://github.com/dlt-hub/dlt)
- Loads the raw data into a **PostgreSQL** container (via Docker)
- Transforms the data using **dbt (Data Build Tool)**

---

## 📁 Project Structure
├── dlt_pipeline/ 
│ ├── extract
│ │ ├── .dlt
│ │ ├── google_sheets
│ │ ├── pipeline.py
│ │ ├── requirements.txt
│ ├── transform
│ │ ├── dbt_project/ 
│ │ ├── dbt_project.yml 
│ │ ├── profiles.yml 
│ │ ├──models
│ │ ├── transformed_model.sql 
│ │ ├──seeds
├── docker-compose.yml 
└── README.md


---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/yourusername/google-sheets-dlt-dbt.git
cd google-sheets-dlt-dbt
```

### 2. Set up Postgresql with Docker

```bash
docker-compose up -d
```

### 3. Configure and run dlt pipeline
```bash
cd extract
pip install -r requirements.txt
```
Note: You need to create a config.toml to add source and destination configurations

```bash
python pipeline.py
```

### 4. Setup and run dbt
```bash
cd transform/ds_mindanao
dbt run
```


