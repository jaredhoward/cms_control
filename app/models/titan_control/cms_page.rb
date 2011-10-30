module TitanControl
  class CmsPage < ActiveRecord::Base
    include TitanControl::ModelCommonality::Metaable
    include TitanControl::ModelCommonality::RouteReload

    STATUSES = ['draft','published']

    has_many :cms_page_categories, :dependent => :destroy
    has_many :categories, :through => :cms_page_categories
    has_many :cms_page_cms_blocks, :dependent => :destroy
    has_many :cms_blocks, :through => :cms_page_cms_blocks

    scope :active_menu, where("menu_title IS NOT NULL").order('sort ASC')
    scope :published, where(:status => 'published')

    validates :status, :inclusion => {:in => STATUSES}

    def is_showable
      return self.status == 'published'
    end

  end
end