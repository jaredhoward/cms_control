class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.timestamps
      t.string :type, :name

      t.index :type
      t.index :name
    end
  end

  def self.down
    drop_table :categories
  end
end
