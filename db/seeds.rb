# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

page = CmsPage.create(:status => 'draft', :show_in_menu => true)
page.cms_meta = CmsMeta.create(:url => 'home', 'title' => 'Main Pine', :description => 'default description', :keywords => 'default keywords', :metaable => page)
page.cms_meta.current_cms_content = CmsContent.create(:contentable => page.cms_meta, :content => 'Hello World!')
page.cms_meta.current_cms_content.save
page.cms_meta.save
page.save
