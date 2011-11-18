module ApplicationHelper

  def url_for_downloads(file_resource)
    file_resource = file_resource.id if file_resource.is_a?(FileResource)
    send(:"download_#{file_resource}_path")
  end

  def block_for_file_resource(file_resource)
    return content_tag(:h3, 'Downloads') + content_tag(:ul, content_tag(:li, link_to(file_resource.name, url_for_downloads(file_resource.id))))
  end

  def block_for_product(product)
    items = ''
    product.file_resources.public_access.each do |file_resource|
      item = file_resource.name
      item << tag(:br)
      item << link_to('More Info', send(:"cms_#{file_resource.cms_meta.id}_path"))
      item << content_tag(:span, "|", :class => "separator")
      item << link_to('Download', url_for_downloads(file_resource.id))
      items << content_tag(:li, item.html_safe)
    end

    return content_tag(:h3, 'Related Files') + content_tag(:ul, items.html_safe)
  end

end
