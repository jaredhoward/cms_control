module TitanControl
  class CmsPageCategory < ActiveRecord::Base
    belongs_to :csm_page
    belongs_to :category

    validates :cms_page_id, :presence => true
    validates :category_id, :presence => true, :uniqueness => {:scope => :cms_page_id}
  end
end