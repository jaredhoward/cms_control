ActionController::Routing::Routes.draw do |map|
  map.connect 'admin', :controller => 'admin', :action => 'index'
  map.namespace :admin do |admin|
    admin.resources :categories
    admin.resources :cms_blocks
    admin.resources :cms_pages
    admin.resources :file_resources
    admin.resources :products
  end

  # CMS Dynamic Routes
  CmsMeta.all.each do |cms|
    map.connect "#{cms.url}.:format", :controller => 'cms', :action => 'show', :id => cms.id, :conditions => { :method => :get } if cms.metaable.is_showable
  end if CmsMeta.table_exists?

  map.root :controller => 'cms', :action => 'show'
  map.connect ':controller/:action/:id'
end
