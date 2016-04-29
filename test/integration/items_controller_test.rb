require 'test_helper'

class MakingListTest < ActionDispatch::IntegrationTest
  def test_items_on_list_can_be_handled_based_on_CRUD
    page.visit list_path

    assert page.has_content?("Add item")
    fill_in('item_body', :with => 'wash car')
    page.click_button('Add item')
    fill_in('item_body', :with => 'feed dog')
    fill_in('item_body', :with => 'hem pants')
    assert page.has_content?('hem pants')

    assert page.has_button?('finished!')
    page.click_button('finished', match: :last)
    refute page.has_content?('wash car')

  end

end
