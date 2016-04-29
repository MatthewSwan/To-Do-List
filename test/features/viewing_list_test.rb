require 'test_helper'

class ViewingListTest < ActionDispatch::IntegrationTest

  def test_view_items_that_need_to_be_done
    page.visit root_path
    assert_equal root_path, page.current_path

    assert page.has_button?("Submit")
    page.fill_in("item", :with => "Wash car")

    find_button("Submit").click
    assert page.has_content?("Wash car")
    refute page.has_content?("what's wrong with that?")
  end
end
