ActionController::Routing::Routes.draw do |map|
  map.admin 'admin', :controller => 'admin', :action => 'index'
  map.namespace :admin do |admin|
    admin.resources :categories
    admin.resources :cms_blocks
    admin.resources :cms_pages, :except => [:show]
    admin.resources :file_resources, :except => [:show]
    admin.resources :products, :except => [:show]
  end

  # CMS Dynamic Routes
  CmsMeta.all.each do |cms|
    if cms.metaable.is_showable
      if cms.metaable.is_a?(FileResource)
        map.connect "/downloads/#{cms.url}", :controller => 'cms', :action => 'download', :id => cms.id, :conditions => { :method => :get }
      else
        map.connect "#{cms.url}.:format", :controller => 'cms', :action => 'show', :id => cms.id, :conditions => { :method => :get }
      end
    end
  end if CmsMeta.table_exists?


  map.root :controller => 'cms', :action => 'show'
  map.connect ':controller/:action/:id'
end
