class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name
    end
    change_table :products do |t|
      t.index :name
    end
  end
end