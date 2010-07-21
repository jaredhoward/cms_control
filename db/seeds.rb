# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

page = CmsPage.create({
  :status => 'draft',
  :show_in_menu => true,
  :cms_meta_attributes => {
    :url => 'home',
    :title => 'Main Pine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => 'Hello World!'}
    ]
  },
})
