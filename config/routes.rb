TitanControl::Engine.routes.draw do
  get 'admin' => 'admin#index'
  namespace :admin do
    resources :categories, :except => [:show]
    resources :cms_blocks, :except => [:show]
    resources :cms_pages, :except => [:show]
    resources :file_resources, :except => [:show]
    resources :products, :except => [:show]
  end

  # CMS Dynamic Routes
  TitanControl::CmsMeta.all.each do |cms|
    get "#{cms.url}(.:format)" => 'cms#show', :id => cms.id, :as => "cms_#{cms.id}" if cms.metaable.is_showable
  end if TitanControl::CmsMeta.table_exists?

  # Dynamic Routes for Files
  TitanControl::FileResource.all.each do |file_resource|
    get "/downloads/#{file_resource.download_url}" => 'cms#download', :id => file_resource.id, :as => "download_#{file_resource.id}" if file_resource.is_showable
  end if TitanControl::FileResource.table_exists?

  root :to => 'cms#show'
end