import sys
import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select

username = sys.argv[1]
password = sys.argv[2]
reponame = sys.argv[3]
driver = webdriver.Chrome()

def login():
    driver.get("http://github.com/login")
    elem = driver.find_element(By.NAME, "login")
    elem.clear()
    elem.send_keys(username)
    # elem.send_keys(Keys.RETURN)
    elem = driver.find_element(By.NAME, "password")
    elem.clear()
    elem.send_keys(password)
    elem.send_keys(Keys.RETURN)

def createNewRepo():
    driver.get("http://github.com/new")
    elem = driver.find_element(By.NAME, "repository[name]")
    elem.clear()
    elem.send_keys(reponame)
    elem = driver.find_element(By.XPATH, "/html/body/div[1]/div[5]/main/div/form/div[5]/div[2]/label/input").click()
    elem2 = driver.find_element(By.XPATH, "/html/body/div[1]/div[5]/main/div/form/div[5]/button")
    elem2.click()
    
if __name__ == "__main__":
    login()
    time.sleep(1)
    createNewRepo()
    time.sleep(1)




