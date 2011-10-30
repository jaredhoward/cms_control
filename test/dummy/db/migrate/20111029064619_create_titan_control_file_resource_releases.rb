class CreateTitanControlFileResourceReleases < ActiveRecord::Migration
  def change
    create_table :titan_control_file_resource_releases do |t|
      t.timestamps
      t.integer :file_resource_id
      t.string :file
    end
    change_table :titan_control_file_resource_releases do |t|
      t.index :file_resource_id
    end
  end
end