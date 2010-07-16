class CmsPage < ActiveRecord::Base
  STATUSES = ['draft']

  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  has_many :cms_page_categories, :dependent => :destroy
  has_many :categories, :through => :cms_page_categories

  validates_presence_of :status
  validates_inclusion_of :status, :in => STATUSES
end
