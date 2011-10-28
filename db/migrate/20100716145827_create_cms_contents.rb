class CreateCmsContents < ActiveRecord::Migration
  def change
    create_table :cms_contents do |t|
      t.datetime :created_at
      t.string :contentable_type
      t.integer :contentable_id
      t.string :status, :title
      t.text :content
    end
    change_table :cms_contents do |t|
      t.index :created_at
      t.index [:contentable_type, :contentable_id]
      t.index :status
    end

    if self.instance_variable_get(:@connection).instance_variable_get(:@config)[:adapter] =~ /^mysql/
      execute "ALTER TABLE `cms_contents` CHANGE COLUMN `content` `content` longtext"
    end
  end
end