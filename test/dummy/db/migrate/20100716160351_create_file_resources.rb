class CreateFileResources < ActiveRecord::Migration
  def change
    create_table :file_resources do |t|
      t.timestamps
      t.string :name, :download_url
      t.integer :current_release_id
    end
    change_table :file_resources do |t|
      t.index :name
    end
  end
end