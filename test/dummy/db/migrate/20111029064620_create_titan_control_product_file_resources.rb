class CreateTitanControlProductFileResources < ActiveRecord::Migration
  def change
    create_table :titan_control_product_file_resources do |t|
      t.timestamps
      t.integer :product_id, :file_resource_id, :category_id
    end
    change_table :titan_control_product_file_resources do |t|
      t.index :product_id
      t.index :file_resource_id
      t.index :category_id
    end
  end
end