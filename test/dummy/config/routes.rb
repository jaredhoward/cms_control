Rails.application.routes.draw do
  # mount TitanControl::Engine => "/"

  # namespace :admin do
  #   resources :file_resources, :except => [:show]
  #   resources :products, :except => [:show]
  # end

  # Dynamic Routes for Files
  FileResource.all.each do |file_resource|
    # get "/downloads/#{file_resource.download_url}" => 'download#show', :id => file_resource.id, :as => "download_#{file_resource.id}" if file_resource.is_showable
    get "/downloads/#{file_resource.download_url}" => 'download#show', :as => "download_#{file_resource.id}", :id => file_resource.id, :format => false, :defaults => {:format => File.extname(file_resource.download_url).sub(/^\./, '')} if file_resource.is_showable
  end if FileResource.table_exists?
end