import requests
import pandas as pd
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

url = "https://blaze.com/en/games/crash"

option = Options()
option.headless = True
driver = webdriver.Firefox()
driver.get(url)

driver.quit()