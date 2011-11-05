class CreateTitanControlCmsContents < ActiveRecord::Migration
  def change
    create_table :titan_control_cms_contents do |t|
      t.datetime :created_at
      t.string :contentable_type
      t.integer :contentable_id
      t.string :status, :title
      t.text :content
    end
    change_table :titan_control_cms_contents do |t|
      t.index :created_at
      t.index [:contentable_type, :contentable_id], :name => 'index_titan_control_cms_contents_on_contentable'
      t.index :status
    end

    if self.instance_variable_get(:@connection).instance_variable_get(:@config)[:adapter] =~ /^mysql/
      execute "ALTER TABLE `titan_control_cms_contents` CHANGE COLUMN `content` `content` longtext"
    end
  end
end