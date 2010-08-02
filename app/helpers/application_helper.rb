# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def url_for_meta(meta)
    url_for(:controller => '/cms', :action => 'show', :id => meta.id, :format => 'html')
  end

  def url_for_downloads(file_resource)
    url_for(:controller => '/cms', :action => 'download', :id => file_resource.id)
  end

end
