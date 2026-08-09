# Country-wise Worker Remittance (FY Jul-72 to Jun-26)

An end-to-end data analytics project analyzing **State Bank of Pakistan** worker remittance data by country. The project covers the full pipeline: data cleaning in Python, storage in PostgreSQL, querying in SQL, and visualization in Power BI — supported by a written report and presentation.

## 📊 Project Overview

Workers' remittances are a major source of foreign exchange for Pakistan. This project analyzes remittance inflows broken down by source country over the given fiscal-year range, identifying trends, top-contributing countries, and data quality issues in the raw dataset.

## 📁 Repository Contents

| File | Description |
|---|---|
| `Worker Remitance.py` | Python script for loading, cleaning (handling missing/duplicate values), and pushing the dataset into a PostgreSQL database |
| `Worker Remitance.xlsm` | Raw/source Excel dataset |
| `country wise remitance.sql` | SQL queries used for analysis on the PostgreSQL table |
| `country wise remitance.pbix` | Power BI dashboard file |
| `Dashboard Snapshot.png` | Preview image of the Power BI dashboard |
| `Country_Wise_Remittance_Report.docx` | Written analysis report |
| `Country_Wise_Remittance_Presentation.pptx` | Summary presentation of findings |

## 🛠️ Tools & Technologies

- **Python** (pandas, SQLAlchemy) — data loading & cleaning
- **PostgreSQL** data analysis/querying
- **Power BI** — dashboard & visualization
- **Excel** — source data

## ⚙️ Data Pipeline

1. **Load** — `Worker Remitance.xlsm` is read into a pandas DataFrame.
2. **Clean** — Missing values in `Remitance in USD` are imputed using the per-country mean; duplicate rows are checked.
3. **Store** — The cleaned data is written to a PostgreSQL table (`worker_remitance`) using SQLAlchemy.
4. **Analyze** — SQL queries (`country wise remitance.sql`) are run against the PostgreSQL table.
5. **Visualize** — Power BI (`country wise remitance.pbix`) connects to the data to build an interactive dashboard.

## 🚀 Getting Started

### Prerequisites
- Python 3.x with `pandas`, `sqlalchemy`, `psycopg2`, and `openpyxl`
- PostgreSQL installed and running
- Power BI Desktop (to open the `.pbix` file)

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/muhammadusman5814-dotcom/Country-wise-worker-remittance-FY-jul-72-to-jun-26.git
   ```
2. Install Python dependencies:
   ```bash
   pip install pandas sqlalchemy psycopg2-binary openpyxl
   ```
3. Update the database connection details (username, password, host, port, database) in `Worker Remitance.py` to match your local PostgreSQL setup. **Do not commit real credentials to the repo** — consider using environment variables instead.
4. Run the script to clean the data and load it into PostgreSQL:
   ```bash
   python "Worker Remitance.py"
   ```
5. Run the queries in `country wise remitance.sql` against the `worker_remitance` table.
6. Open `country wise remitance.pbix` in Power BI Desktop to explore the dashboard.

## 📈 Dashboard Preview

See `Dashboard Snapshot.png` for a preview of the Power BI dashboard.

## 📄 Reports

- Detailed findings: `Country_Wise_Remittance_Report.docx`
- Summary slides: `Country_Wise_Remittance_Presentation.pptx`

## 👤 Author

Muhammad Usman

## 📝 License

No license specified yet — add one (e.g., MIT) if you'd like others to reuse this project.
