ActiveAdmin.register TitanControl::CmsPage, :as => "Page" do
  config.clear_sidebar_sections!
  menu :parent => 'CMS', :priority => 1

  index do
    column :menu_title
    column :status
    column :sort
    column("url") {|page| page.cms_meta.url }
    column("access") {|page| page.cms_meta.access }
    column("page title") {|page| page.cms_meta.title }
    column("content title") {|page| page.cms_meta.current_cms_content.title }
    default_actions
  end

  show do
    attributes_table :status, :sort, :menu_title

    panel "Meta Details" do
      attributes_table_for page.cms_meta, :url, :access, :title
    end

    panel "Content Details" do
      attributes_table_for(page.cms_meta.current_cms_content) do
        row :status
        row :title
        row(:content) { content_tag(:pre, page.cms_meta.current_cms_content.content, :style => "white-space:pre-wrap") }
      end
    end
  end

  sidebar "Content History", :only => :show do
    table_for(page.cms_meta.cms_contents) do
      column :created_at
    end
  end

end
