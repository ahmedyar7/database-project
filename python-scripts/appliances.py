from bs4 import BeautifulSoup
from requests import get
import pandas as pd

file = pd.read_html("https://telemart.pk/home-and-kitchen-appliances.html")
file_df = pd.DataFrame(file)
print(file_df)
