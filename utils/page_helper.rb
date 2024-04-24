module PageHelper

  def self.take_screenshot(file_name)
    time = Time.new
    time_day = time.strftime('%Y-%m-%d')
    time_hours = time.strftime('%H-%M-%S')
    file_path = "output/screenshots-#{time_day}"
    FileUtils.mkdir_p(file_path) unless File.directory?(file_path)
    screenshot_name = "#{file_path}/#{file_name.gsub(" ", '_')}-#{time_hours}.png"
    page.save_screenshot(screenshot_name)
    Allure.add_attachment(name: "#{file_name}-#{time_hours}.png", source: File.open("#{screenshot_name}"), type: Allure::ContentType::PNG, test_case: true)
  end
end