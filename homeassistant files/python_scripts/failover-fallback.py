from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import datetime
import time

options = Options()
options.headless = True
driver = webdriver.Firefox(options = options)
driver.get("https://x.x.x.x:xxxx/webconsole/webpages/login.jsp")
elem = driver.find_element_by_id("username")
elem.send_keys("USERNAME")                                          #####EDIT
elem = driver.find_element_by_id("password")
elem.send_keys("PASSWORD")                                          #####EDIT
elem.send_keys(Keys.RETURN)
driver.implicitly_wait(10)
elem = driver.find_element_by_name("button")
elem.click()
time.sleep(5)
driver.implicitly_wait(10)
Firewall = driver.find_element_by_link_text("Firewall")
hover = ActionChains(driver).move_to_element(Firewall)
hover.click(Firewall).perform()
driver.implicitly_wait(10)
#elem = driver.find_element_by_link_text("Cellular_#Default_...")
elem = driver.find_element_by_link_text("#Default_Network_P...") # actual link for production
elem.click()
driver.implicitly_wait(10)

#_______________________________________________________________________________________________________________

body = driver.find_element_by_xpath('/html/body')
body.click()
ActionChains(driver).send_keys(Keys.PAGE_DOWN).perform()
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
driver.implicitly_wait(10)

#Policy = driver.find_element_by_xpath("//span[contains(.,'Fallback_Cellular')]")    #failover
Policy = driver.find_element_by_xpath("//span[contains(.,'Default NBGS Policy')]") #fallback
hover = ActionChains(driver).move_to_element(Policy)
hover.click(Policy).perform()
driver.implicitly_wait(10)


elem = driver.find_element_by_xpath("//span[contains(.,'Fallback_Cellular')]")     #fallback
#elem = driver.find_element_by_xpath("//span[contains(.,'Default NBGS Policy')]")    #failover
elem.click()
elem = driver.find_element_by_id("btnOK")
elem.click()
driver.implicitly_wait(10)
time.sleep(5)



logout = driver.find_element_by_xpath("//span[contains(.,'admin')]")
hover = ActionChains(driver).move_to_element(logout)
hover.click(logout).perform()
driver.implicitly_wait(10)


elem = driver.find_element_by_link_text("Logout")
elem.click()
driver.close()
driver.quit()

now = datetime.datetime.now()
print("Successfull failover on : " + str(now))
