class CreateTitanControlFileResources < ActiveRecord::Migration
  def change
    create_table :titan_control_file_resources do |t|
      t.timestamps
      t.string :name, :download_url
      t.integer :current_release_id
    end
    change_table :titan_control_file_resources do |t|
      t.index :name
    end
  end
end