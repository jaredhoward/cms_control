class FileResource < ActiveRecord::Base
  include CommonRouteReload

  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  has_many :file_resource_versions, :dependent => :destroy
  has_many :product_file_resources, :dependent => :destroy

  belongs_to :current_cms_content, :class_name => 'CmsContent', :dependent => :destroy
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  validates_presence_of :name
  validates_uniqueness_of :name

  def is_showable
    return true
  end
end
