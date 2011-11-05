TitanControl::Engine.routes.draw do
# Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  namespace :admin do
    resources :categories, :except => [:show]
    resources :cms_blocks, :except => [:show]
    resources :cms_pages, :except => [:show]
  end

  # CMS Dynamic Routes
  TitanControl::CmsMeta.all.each do |cms|
    if cms.metaable.is_showable
      extension = File.extname(cms.url).sub(/^\./, '')

      path = "#{cms.url}"
      options = {:as => "cms_#{cms.id}", :id => cms.id}
      if extension.empty?
        path << "(.:format)"
      else
        options.merge!({:format => false, :defaults => {:format => extension}})
      end
      get({path => 'cms#show'}.merge(options))
    end
  end if TitanControl::CmsMeta.table_exists?

  root :to => 'cms#show'
end