class CmsPage < ActiveRecord::Base
  STATUSES = ['draft']

  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  has_many :cms_page_categories, :dependent => :destroy
  has_many :categories, :through => :cms_page_categories

  belongs_to :current_cms_content, :class_name => 'CmsContent', :dependent => :destroy
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  validates_presence_of :status
  validates_inclusion_of :status, :in => STATUSES
  
  def is_showable()
    return true
  end

end
