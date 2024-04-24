class SearchPage

  def initialize
    @txt_search_css = "[name='q']"
    @btn_search_css = "input[name='btnK']"
  end

  def visit_website
    visit '/'
  end

  def search_keyword(keyword)
    find(@txt_search_css).send_keys(keyword)
    self
  end

  def click_search_button
    first(@btn_search_css).click
  end

end