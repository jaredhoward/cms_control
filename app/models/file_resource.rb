def FileResource < ActiveRecord::Base
  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  has_many :file_resource_versions, :dependent => :destroy
  has_many :product_file_resources, :dependent => :destroy

  validates_presence_of :name
  validates_uniqueness_of :name
end
