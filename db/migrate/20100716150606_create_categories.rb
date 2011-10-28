class CreateCategories < ActiveRecord::Migration
  def self.change
    create_table :categories do |t|
      t.timestamps
      t.string :category_type, :name
    end
    change_table :categories do |t|
      t.index :category_type
      t.index :name
    end
  end
end