class FileResourceVersionAttribute < ActiveRecord::Base
  belongs_to :file_resource_version
  belongs_to :file_resource_attribute

  validates_presence_of :file_resource_version_id, :file_resource_attribute_id
  validates_uniqueness_of :file_resource_attribute_id, :scope => :file_resource_version_id
end
