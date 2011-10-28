class CreateFileResourceReleases < ActiveRecord::Migration
  def change
    create_table :file_resource_releases do |t|
      t.timestamps
      t.integer :file_resource_id
      t.string :file
    end
    change_table :file_resource_releases do |t|
      t.index :file_resource_id
    end
  end
end