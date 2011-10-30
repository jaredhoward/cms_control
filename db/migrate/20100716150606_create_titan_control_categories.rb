class CreateTitanControlCategories < ActiveRecord::Migration
  def change
    create_table :titan_control_categories do |t|
      t.timestamps
      t.string :category_type, :name
    end
    change_table :titan_control_categories do |t|
      t.index :category_type
      t.index :name
    end
  end
end