class CreateActiveAdminComments < ActiveRecord::Migration
  def change
    create_table :active_admin_comments do |t|
      t.timestamps
      t.references :resource, :polymorphic => true, :null => false
      t.references :author, :polymorphic => true
      t.string :namespace
      t.text :body
    end
    change_table :active_admin_comments do |t|
      t.index [:resource_type, :resource_id]
      t.index [:author_type, :author_id]
      t.index [:namespace]
    end
  end
end