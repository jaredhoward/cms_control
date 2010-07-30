class CreateFileResources < ActiveRecord::Migration
  def self.up
    create_table :file_resources do |t|
      t.timestamps
      t.string :name, :access, :path
      t.integer :file_resource_release_id

      t.index :name
      t.index :access
    end
  end

  def self.down
    drop_table :file_resources
  end
end
