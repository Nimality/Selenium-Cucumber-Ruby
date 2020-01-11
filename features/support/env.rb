require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', '--headless'])
#options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized'])

Before do
    @driver = Selenium::WebDriver.for(:chrome, options: options)
    @driver.manage.delete_all_cookies
end

After do
    @driver.quit
end
