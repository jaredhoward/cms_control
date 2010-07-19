class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.timestamps
      t.string :category_type, :name

      t.index :category_type
      t.index :name
    end
  end

  def self.down
    drop_table :categories
  end
end
