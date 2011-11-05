module ApplicationHelper

  def url_for_downloads(file_resource)
    file_resource = file_resource.id if file_resource.is_a?(FileResource)
    send(:"download_#{file_resource}_path")
  end

  def col_right_area(metaable)
    case metaable
    when TitanControl::CmsPage then cms_blocks(metaable)
    when TitanControl::FileResource then block_for_file_resource(metaable)
    when TitanControl::Product then block_for_product(metaable)
    end.html_safe
  end

  def cms_blocks(cms_page)
    content = String.new
    blocks = cms_page.cms_blocks.empty? ? [TitanControl::CmsBlock.first] : cms_page.cms_blocks
    blocks.each do |block|
      content << cms_block(block)
    end
    return content
  end

  def cms_block(cms_block)
    return content_tag(:h3, cms_block.current_cms_content.title) + cms_block.current_cms_content.content.html_safe
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

  def build_top_nav
    nav = Array.new
    pages = TitanControl::CmsPage.published.active_menu
    pages.each do |page|
      page_url = page.cms_meta.url == 'home' ? root_url : send(:"cms_#{page.cms_meta.id}_path")
      current_nav = {
        :title => page.menu_title,
        :url => page_url,
        :classes => []
      }
      current_nav[:classes].push 'first' if page == pages.first
      current_nav[:classes].push 'last' if page == pages.last
      current_nav[:classes].push 'active' if current_page?(page_url)
      nav.push current_nav
    end
    return nav
  end

end
