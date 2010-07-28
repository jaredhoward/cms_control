class CmsPage < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  STATUSES = ['draft','published']

  has_many :cms_page_categories, :dependent => :destroy
  has_many :categories, :through => :cms_page_categories
  has_many :cms_page_cms_blocks, :dependent => :destroy
  has_many :cms_blocks, :through => :cms_page_cms_blocks

  named_scope :active_menu, :conditions => "menu_title IS NOT NULL", :order => 'sort ASC'
  named_scope :published, :conditions => {:status => 'published'}

  validates_inclusion_of :status, :in => STATUSES

  def is_showable
    return self.status == 'published'
  end

end
