import html5lib
import time
import requests
import pandas as pd
from playsound import playsound
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

url = "https://blaze.com/en/games/crash"


option = Options()
option.headless = True
driver = webdriver.Firefox()
driver.get(url)
time.sleep(5)

count = 0

while (count ==0):

	
	
	tab = driver.find_elements_by_xpath(".//div[@class='entries']")
 
	#element = driver.find_element_by_xpath(".//div[@class='entries']")
	html_contennt.t = elemeget_attribute('outerHTML')

	soup = BeautifulSoup(html_content, 'html.parser')
	resultado = (soup.find('span')).contents[0]
	
 
	time.sleep(1.0)
	str(resultado).split(',')
	
	print(resultado)
	
 	#lista.append(resultado)
 	#df = pd.DataFrame(lista)
 	#print((df).header())
 	

	if resultado == ("1.00X"):	
		playsound('C:/Users/Maicola/Contacts/alerta.mp3')
		print("Entrada")
	

	










