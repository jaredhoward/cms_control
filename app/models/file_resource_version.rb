class FileResourceVersion < ActiveRecord::Base
  belongs_to :file_resource
  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  has_many :file_resource_version_attributes, :dependent => :destroy
  has_many :file_resource_attributes, :through => :file_resource_version_attributes

  validates_presence_of :file_resource_id, :name
  validates_uniqueness_of :name

  def is_showable()
    return true
  end
end
