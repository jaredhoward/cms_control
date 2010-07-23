module CmsHelper

  def cms_block(block_id)
    return "got #{block_id}"
  end

  def build_top_nav()
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
