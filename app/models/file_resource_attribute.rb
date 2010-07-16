class FileResourceAttribute < ActiveRecord::Base
  has_many :file_resource_version_attributes, :dependent => :destroy

  validates_presence_of :group, :name
  validates_uniqueness_of :name, :scope => :group
end
