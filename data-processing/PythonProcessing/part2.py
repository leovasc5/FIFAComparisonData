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
    df = pd.read_csv(i, sep=';', index_col=0)