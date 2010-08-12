module CmsHelper

  def col_right_area(metaable)
    case metaable
    when CmsPage then cms_blocks(metaable)
    when FileResource then block_for_file_resource(metaable)
    when Product then block_for_product(metaable)
    end
  end

  def cms_blocks(cms_page)
    content = String.new
    blocks = cms_page.cms_blocks.empty? ? [CmsBlock.first] : cms_page.cms_blocks
    blocks.each do |block|
      content << cms_block(block)
    end
    return content
  end

  def cms_block(cms_block)
    return content_tag(:h3, cms_block.current_cms_content.title) + cms_block.current_cms_content.content.html_safe
  end

  def block_for_file_resource(file_resource)
    items = ''
    items << content_tag(:li, link_to(file_resource.name, :controller => 'cms', :action => 'download', :id => file_resource.id))
    # file_resource.file_resource_releases.each do |release|
    #   # items << content_tag(:li, link_to(file_resource.name, :controller => 'cms', :action => 'download', :id => file_resource.id))
    # end

    return content_tag(:h3, 'Downloads') + content_tag(:ul, items)
  end

  def block_for_product(product)
    items = ''
    product.file_resources.public_access.each do |file_resource|
      # items << content_tag(:li, link_to(file_resource.name, :controller => 'cms', :action => 'download', :id => file_resource.id))
      items << content_tag(:li, link_to(file_resource.name, :controller => 'cms', :action => 'show', :id => file_resource.cms_meta.id, :format => 'html'))
    end

    return content_tag(:h3, 'Related Files') + content_tag(:ul, items)
  end

  def build_top_nav
    nav = Array.new
    pages = CmsPage.published.active_menu
    pages.each do |page|
      page_url = page.cms_meta.url == 'home' ? root_url : url_for(:controller => 'cms', :action => 'show', :id => page.cms_meta.id, :format => 'html')
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
