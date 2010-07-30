class FileResourceRelease < ActiveRecord::Base
  belongs_to :file_resource

  validates_presence_of :file
  validates_uniqueness_of :file

#   before_validation_on_create :associate_cms_meta_metaable_to_self
# 
# private
# 
#   def associate_cms_meta_metaable_to_self
#     self.cms_meta.metaable = self if self.cms_meta.metaable.nil?
#   end

end
