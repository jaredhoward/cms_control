class CreateProductFileResources < ActiveRecord::Migration
  def self.up
    create_table :product_file_resources do |t|
      t.timestamps
      t.integer :product_id, :file_resource_id, :category_id

      t.index :product_id
      t.index :file_resource_id
      t.index :category_id
    end
  end

  def self.down
    drop_table :product_file_resources
  end
end
