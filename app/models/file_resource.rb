class FileResource < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  has_many :file_resource_versions, :dependent => :destroy
  has_many :product_file_resources, :dependent => :destroy

  validates_presence_of :name
  validates_uniqueness_of :name

  def is_showable
    return true
  end
end
