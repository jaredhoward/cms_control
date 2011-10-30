class CreateTitanControlProducts < ActiveRecord::Migration
  def change
    create_table :titan_control_products do |t|
      t.timestamps
      t.string :name
    end
    change_table :titan_control_products do |t|
      t.index :name
    end
  end
end