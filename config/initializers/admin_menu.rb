TitanControl::AdminMenu.menu do |menu|
  menu.item :dashboard, :priority => 10 do |dashboard|
    dashboard.item :dashboard, :url => "admin_dashboard_path"
  end
  menu.item :pages, :priority => 20 do |pages|
    pages.item :view, :priority => 10, :url => "admin_cms_pages_path"
    pages.item :new, :priority => 20, :url => "new_admin_cms_page_path"
  end
  menu.item :blocks, :priority => 30 do |blocks|
    blocks.item :view, :priority => 10, :url => "admin_cms_blocks_path"
    blocks.item :new, :priority => 20, :url => "new_admin_cms_block_path"
  end
end
