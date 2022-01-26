# Finding null values in columns for database creation

from asyncio.windows_events import NULL
import pandas as pd

editions = ['fifa-15','fifa-16','fifa-17','fifa-18','fifa-19','fifa-20','fifa-21',]
notnull = []

#I had to repeat the path because python was reporting an unicode error when I use a var in if statement
for i in editions:
    if i == 'fifa-15':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-15.csv', sep=';', index_col=0)
    elif i == 'fifa-16':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-16.csv', sep=';', index_col=0)
    elif i == 'fifa-17':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-17.csv', sep=';', index_col=0)
    elif i == 'fifa-18':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-18.csv', sep=';', index_col=0)
    elif i == 'fifa-19':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-19.csv', sep=';', index_col=0)
    elif i == 'fifa-20':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-20.csv', sep=';', index_col=0)
    elif i == 'fifa-21':
        df = pd.read_csv(r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-21.csv', sep=';', index_col=0)

    for j in df.columns[df.isnull().any()].tolist():
        notnull.append(j)

notnull = list(dict.fromkeys(notnull))
for k in notnull:
    print(k) # -> These will be the columns (fields) that will not receive notnull to avoid future errors and ensure system integrity