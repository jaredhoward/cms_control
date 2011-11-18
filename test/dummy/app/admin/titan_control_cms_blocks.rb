ActiveAdmin.register TitanControl::CmsBlock, :as => "Block" do
  config.clear_sidebar_sections!
  menu :parent => 'CMS', :priority => 2

  index do
    column :title
    column("content title") {|block| block.current_cms_content.title }
    default_actions
  end
end
