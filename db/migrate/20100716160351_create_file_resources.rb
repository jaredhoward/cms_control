class CreateFileResources < ActiveRecord::Migration
  def self.up
    create_table :file_resources do |t|
      t.timestamps
      t.string :name, :download_url
      t.integer :current_release_id

      t.index :name
    end
  end

  def self.down
    drop_table :file_resources
  end
end
