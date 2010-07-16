class CreateFileResourceVersionAttributes < ActiveRecord::Migration
  def self.up
    create_table :file_resource_version_attributes do |t|
      t.integer :file_resource_version_id, :file_resource_attribute_id

      t.index :file_resource_version_id
      t.index :file_resource_attibute_id
    end
  end

  def self.down
    drop_table :file_resource_version_attributes
  end
end
