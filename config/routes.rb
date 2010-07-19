ActionController::Routing::Routes.draw do |map|
  map.namespace :admin do |admin|
    admin.resources :cms_pages
  end

  # CMS Controller
  map.connect ':url', :controller => 'cms', :action => 'index', :defaults => {:url => 'home'}
end
