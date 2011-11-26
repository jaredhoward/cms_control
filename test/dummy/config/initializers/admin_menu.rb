TitanControl::AdminMenu.menu do |menu|
  menu.item :products, :priority => 40 do |products|
    products.item :list, :priority => 10, :url => "products_path"
    products.item :new, :priority => 20, :url => "new_product_path"
  end
  menu.item :file_resources, :priority => 50 do |file_resources|
    file_resources.item :list, :priority => 10, :url => "file_resources_path"
    file_resources.item :new, :priority => 20, :url => "new_file_resource_path"
  end
end
