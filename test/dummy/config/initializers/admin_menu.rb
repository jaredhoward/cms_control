TitanControl::AdminMenu.menu do |menu|
  menu.item :products, :priority => 40 do |products|
    products.item :view, :priority => 10, :url => "admin_products_path"
    products.item :new, :priority => 20, :url => "new_admin_product_path"
  end
  menu.item :file_resources, :priority => 50 do |file_resources|
    file_resources.item :view, :priority => 10, :url => "admin_file_resources_path"
    file_resources.item :new, :priority => 20, :url => "new_admin_file_resource_path"
  end
end
