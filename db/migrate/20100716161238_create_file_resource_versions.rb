class CreateFileResourceVersions < ActiveRecord::Migration
  def self.up
    create_table :file_resource_versions do |t|
      t.timestamps
      t.integer :file_resource_id
      t.string :file

      t.index :file_resource_id
    end
  end

  def self.down
    drop_table :file_resource_versions
  end
end
