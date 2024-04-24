require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'rspec'
require 'allure-cucumber'

require_relative '../../utils/driver.rb'
require_relative '../../utils/page_helper.rb'
require_relative '../../config/base_config.rb'

include Capybara::DSL
include RSpec::Matchers

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = 'https://www.google.com'
  config.default_max_wait_time = BaseConfig.wait_time
end

Allure.configure do |c|
  c.results_directory = 'output/allure-results'
  c.clean_results_directory = true
  c.logging_level = BaseConfig.logging_level
  c.environment_properties = {
    browser: "#{BaseConfig.browser}",
    headless: "#{BaseConfig.headless}" }
end