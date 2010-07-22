module CmsHelper

  def cms_block(block_id)
    return "got #{block_id}"
  end

  def build_top_nav()
    nav = Array.new
    pages = CmsPage.all(:conditions => {:status => 'draft', :show_in_menu => true}, :order => 'sort ASC')
    pages.each do |page|
      current_nav = {
        :title => page.cms_meta.title,
        :url => url_for(:controller => 'cms', :action => 'show', :id => page.cms_meta.id),
        :classes => []
      }
      current_nav[:classes].push "first" if page == pages.first
      current_nav[:classes].push "last" if page == pages.last
      nav.push current_nav
    end
    return nav
  end

end
