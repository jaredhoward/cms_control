module CmsHelper

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

  def col_right_area(metaable)
    metaable_helper = :"block_for_#{metaable.class.to_s.demodulize.underscore}"
    send(metaable_helper, metaable).html_safe if methods.include?(metaable_helper)
  end

  def block_for_cms_page(cms_page)
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

end
