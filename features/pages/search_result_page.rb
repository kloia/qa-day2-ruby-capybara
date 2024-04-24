class SearchResultPage

  def initialize
    @lbl_search_result_css = ".g link[href*='%s']"
  end

  def verify_search_result(value)
    page.have_selector(@lbl_search_result_css % value)
  end

end