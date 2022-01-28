import pandas as pd
import pyodbc
from part1 import getEditions

editions = getEditions()
conn = pyodbc.connect(
        'Driver={ODBC Driver 17 for SQL Server};'
        'Server=LEO;'
        'Database=FIFAComparisonDATA;'
        'Trusted_Connection=yes;'
    )

cursor = conn.cursor()
# cursor.execute('SELECT * FROM Fifa15') -> Tests run successfully

for i in editions:
    df = pd.read_csv(i, sep=';', index_col=0, encoding='cp1252')

    # Changed real face attribute to boolean type
    df['real_face'].replace(to_replace='Yes', value=True, inplace=True)
    df['real_face'].replace(to_replace='No', value=False, inplace=True)

    for idx, row in df.head(1).iterrows():
        if i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-15.csv':
            table = 'Fifa15'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-16.csv':
            table = 'Fifa16'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-17.csv':
            table = 'Fifa17'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-18.csv':
            table = 'Fifa18'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-19.csv':
            table = 'Fifa19'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-20.csv':
            table = 'Fifa20'
        elif i == r'C:\Users\l5\projetos\FIFAComparisonData\raw-data\fifa-21.csv':
            table = 'Fifa21'

        cursor.execute('''
                        INSERT INTO ''' + table + ''' VALUES('''
                        + str(row.values) +
                         ''')''')

        # for k in row.values:
        #     print(k)