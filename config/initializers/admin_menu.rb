TitanControl::AdminMenu.menu do |menu|
  menu.item :dashboard, :priority => 10, :url => "root_path"
  menu.item :pages, :priority => 20 do |pages|
    pages.item :new, :priority => 20, :url => "new_cms_page_path"
    pages.item :list, :priority => 10, :url => "cms_pages_path"
  end
  menu.item :blocks, :priority => 30 do |blocks|
    blocks.item :list, :priority => 10, :url => "cms_blocks_path"
    blocks.item :new, :priority => 20, :url => "new_cms_block_path"
  end
end
