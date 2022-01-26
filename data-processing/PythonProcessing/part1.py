# Finding null values in columns for database creation
import pandas as pd

editions = [r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-15.csv', r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-16.csv', r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-17.csv',
r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-18.csv',r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-19.csv',r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-20.csv',
r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-21.csv']
notnull = []

for i in editions:
    df = pd.read_csv(i, sep=';', index_col=0)
    for j in df.columns[df.isnull().any()].tolist():
        notnull.append(j)

notnull = list(dict.fromkeys(notnull))
for k in notnull:
    print(k) # -> These will be the columns (fields) that will not receive notnull to avoid future errors and ensure system integrity

def getEditions():
    return editions