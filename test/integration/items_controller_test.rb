require 'test_helper'

class MakingListTest < ActionDispatch::IntegrationTest
  def test_items_on_list_can_be_handled_based_on_CRUD
    page.visit root_path

    assert page.has_button?("Submit")
    fill_in('item', :with => 'wash car')
    click_on('Submit')
    fill_in('item', :with => 'feed dog')
    click_on('Submit')
    fill_in('item', :with => 'hem pants')
    click_on('Submit')
    assert page.has_content?('hem pants')
  end
end
