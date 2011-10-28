Gshgeotech::Application.routes.draw do
  match 'admin' => 'admin#index'
  namespace :admin do
    resources :categories, :except => [:show]
    resources :cms_blocks, :except => [:show]
    resources :cms_pages, :except => [:show]
    resources :file_resources, :except => [:show]
    resources :products, :except => [:show]
  end

  # CMS Dynamic Routes
  CmsMeta.all.each do |cms|
    get "#{cms.url}.:format" => 'cms#show', :id => cms.id if cms.metaable.is_showable
  end if CmsMeta.table_exists?

  # Dynamic Routes for Files
  FileResource.all.each do |file_resource|
    get "/downloads/#{file_resource.download_url}" => 'cms#download', :id => file_resource.id if file_resource.is_showable
  end if FileResource.table_exists?

  root :to => 'cms#show'
  match ':controller(/:action(/:id(.:format)))'
end