import pandas as pd
import pyodbc
from part1 import getEditions

editions = getEditions()
conn = pyodbc.connect(
        'Driver={SQL Server};'
        'Server=LEO;'
        'Database=FIFAComparisonDATA;'
        'Trusted_Connection=yes;'
    )

for i in editions:
    df = pd.read_csv(i, sep=';', index_col=0)
    