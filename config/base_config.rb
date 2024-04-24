module BaseConfig

  @wait_time = 20
  def self.wait_time
    @wait_time
  end

  @browser = ENV['browser'] || 'chrome'
  def self.browser
    @browser
  end

  @headless = ENV['headless'] || 'false'
  def self.headless
    @headless
  end


  @logging_level = Logger::INFO
  # Available options:
  # * info => Logger::INFO
  # * debug => Logger::DEBUG
  # * error => Logger::ERROR
  def self.logging_level
    @logging_level
  end

end