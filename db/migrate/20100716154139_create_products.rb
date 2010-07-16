class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.timestamps
      t.string :name

      t.index :name
    end
  end

  def self.down
    drop_table :products
  end
end
