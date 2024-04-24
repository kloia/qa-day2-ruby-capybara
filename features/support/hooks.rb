Before do
  Driver.get_driver
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  begin
    if scenario.failed?
      PageHelper.take_screenshot(scenario.name)
      puts "FAILED ==> #{scenario.name}"
    else
      puts "PASSED ==> #{scenario.name}"
    end
    Capybara.current_session.driver.quit
  rescue Exception => exception
    PageHelper.take_screenshot(scenario.name)
    puts "FAILED ==> #{exception}"
    Capybara.current_session.driver.quit
  end
end