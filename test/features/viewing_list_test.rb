require 'test_helper'

class ViewingListTest < ActionDispatch::IntegrationTest

  def test_view_items_that_need_to_be_done
    page.visit list_path
    assert_equal root_path, page.current_page

    assert page.has_button?("Add item")
    page.fill_in :with => "Wash car"

    button.click("Add item")
    assert page.has_content("Wash car")
  end
end
