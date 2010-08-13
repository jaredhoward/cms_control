class CmsBlock < ActiveRecord::Base
  include CommonContentable

  has_many :cms_page_cms_blocks, :dependent => :destroy

  named_scope :title_order, :order => 'title ASC'

  validates_presence_of :title
end
