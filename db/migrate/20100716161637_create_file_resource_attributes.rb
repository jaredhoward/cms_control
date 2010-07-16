class CreateFileResourceAttributes < ActiveRecord::Migration
  def self.up
    create_table :file_resource_attributes do |t|
      t.timestamps
      t.string :group, :name

      t.index :group
      t.index :name
    end
  end

  def self.down
    drop_table :file_resource_attributes
  end
end
