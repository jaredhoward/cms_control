ActionController::Routing::Routes.draw do |map|
  map.connect 'admin', :controller => 'admin', :action => 'index'
  map.namespace :admin do |admin|
    admin.resources :categories
    admin.resources :cms_blocks
    admin.resources :cms_pages
  end

  # CMS Controller
  map.connect ':url', :controller => 'cms', :action => 'index', :defaults => {:url => 'home'}
end
