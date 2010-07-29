class FileResourceRelease < ActiveRecord::Base
  belongs_to :file_resource

  validates_presence_of :file_resource_id, :file
  validates_uniqueness_of :file

  def is_showable
    return true
  end
end
