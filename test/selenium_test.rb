require 'selenium-webdriver'

driver = Selenium::WebDriver.for:chrome

driver.get "https://www.propertyfinder.ae/"

element = driver.find_element(:name, 'q')
element.send_keys "marina"
driver.find_element(:xpath, "//*[@id='search-form-property']/div[3]/div[1]/span/div/div/div[1]/strong/strong").click

driver.find_element(:xpath, "//*[@id='search-form-property']/div[4]/div/div[1]/div/button").click
driver.find_element(:xpath, "//*[@id='search-form-property']/div[4]/div/div[1]/div/div/ul/li[2]").click

driver.find_element(:xpath, "//*[@id='price_group']/div[2]/div/button").click
driver.find_element(:xpath, "//*[@id='price_group']/div[2]/div/div/ul/li[10]").click

driver.find_element(:xpath, "//*[@id='bedroom_group']/div[1]/div/button").click
driver.find_element(:xpath, "//*[@id='bedroom_group']/div[1]/div/div/ul/li[4]").click

driver.find_element(:xpath, "//*[@id='search-form-property']/div[3]/div[1]/button").click

driver.find_element(:xpath, "//*[@id='content']/ul/li[2]/div/div[3]/h2/a/bdi").click

el = driver.find_element(:xpath, "//*[@id='property-facts']/table/tbody/tr[5]/td")

if el.text == "2"
  puts 'Test passed'
else
  puts 'Test failed'
end

driver.quit
