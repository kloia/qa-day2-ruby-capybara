search_result_page = SearchResultPage.new

begin

  Then(/^verify search result contains searched keyword on search result page$/) do
    search_result_page.verify_search_result($keyword)
  end

rescue Exception => e
  puts e
end