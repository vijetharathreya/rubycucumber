#require 'watir'

Before do

Selenium::WebDriver::Chrome.driver_path="C:/webdriver/chromedriver.exe"
@browser = Selenium::WebDriver.for(:chrome, detach: true)


end


After do
  @browser.close
end
