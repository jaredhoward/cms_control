ActionController::Routing::Routes.draw do |map|
  map.connect 'admin', :controller => 'admin', :action => 'index'
  map.namespace :admin do |admin|
    admin.resources :categories
    admin.resources :cms_blocks
    admin.resources :cms_pages
  end

  # CMS Dynamic Routes
  CmsMeta.all.each do |cms|
    map.connect cms.url, :controller => 'cms', :action => 'show', :id => cms.id, :conditions => { :method => :get } if cms.metaable.is_showable
  end if CmsMeta.table_exists?

  map.connect ':controller/:action/:id'
  map.connect '', :controller => 'cms', :action => 'show'
  map.root :controller => 'cms', :action => 'show'

end
