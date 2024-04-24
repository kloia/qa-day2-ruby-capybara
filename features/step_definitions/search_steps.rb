search_page = SearchPage.new

begin

  Given(/^visit url$/) do
    search_page.visit_website
  end

  When(/^search "([^"]*)" on search page$/) do |keyword|
    $keyword = keyword
    search_page.search_keyword(keyword)
               .click_search_button
  end

rescue Exception => e
  puts e
end