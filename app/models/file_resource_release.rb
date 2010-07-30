class FileResourceRelease < ActiveRecord::Base
  belongs_to :file_resource

  validates_presence_of :file_resource, :file
  validates_uniqueness_of :file, :scope => :file_resource_id
end
