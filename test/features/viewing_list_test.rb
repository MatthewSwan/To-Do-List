require 'test_helper'

class ViewingList < ActionDispatch::IntegrationTest

  page.visit list_path
  assert_equal root_path, page.current_page

  assert page.has_button?("Add item")
  page.fill("Wash car")

  button.click("Add item")
  assert page.has_content("Wash car")
end
