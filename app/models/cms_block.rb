class CmsBlock < ActiveRecord::Base
  include CommonContentable

  has_many :cms_page_cms_blocks, :dependent => :destroy

  validates_presence_of :title
end
