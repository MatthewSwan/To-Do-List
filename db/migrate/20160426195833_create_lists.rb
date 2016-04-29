class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :item
    end

    create_table :entries do |t|
      t.text "entry"
    end

    create_table :associations do |t|
      t.integer :list_id
      t.integer :entry_id
    end
  end
end
