class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :item
    end
  end
end
