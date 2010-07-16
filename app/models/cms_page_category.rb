class CmsPageCategory < ActiveRecord::Base
  belongs_to :csm_page
  belongs_to :category

  validates_presence_of :cms_page_id, :category_id
  validates_uniqueness_of :category_id, :scope => :cms_page_id
end
