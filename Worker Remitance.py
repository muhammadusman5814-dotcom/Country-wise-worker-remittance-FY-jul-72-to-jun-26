import pandas as pd 
from sqlalchemy import create_engine

df = pd.read_excel('end to end project/Country wise worker remitance/Worker Remitance.xlsm')
print("Data loaded successfully!")
print(df.head(30))
print(df.describe())
print(df.isnull().sum())
print(df.isnull().sum()/len(df)*100)
df['Remitance in USD'] = df.groupby('Countries')['Remitance in USD'].transform(
    lambda X : X.fillna(X.mean()))
print(df.isnull().sum())
print(df.duplicated().sum())
print(df.head(15000))

username = "postgres"
password = "Usman0987"
host = "localhost"
port = "5432"   
database = "remitance"
engine = create_engine(f'postgresql://{username}:{password}@{host}:{port}/{database}')

table_name = "worker_remitance"
df.to_sql(table_name, engine, if_exists='replace', index=False) 
print(f"Data inserted into PostgreSQL table '{table_name}' successfully!")
# # df.to_excel('end to end project\War Analysis\War_Cleaned .xlsx', index=False)

