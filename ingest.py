import pandas as pd
from ucimlrepo import fetch_ucirepo

print("Connecting directly to the UCI Dataset Repository...")

# Fetch the Online Retail dataset using its official ID (352)
online_retail = fetch_ucirepo(id=352)

# Load the features into a Pandas DataFrame
df = online_retail.data.features

print("--- RAW CORPORATE DATA FETCHED SUCCESSFULLY ---")
print(f"Total production rows loaded: {len(df):,}")
print("\nFirst 5 transactions:")
print(df.head())