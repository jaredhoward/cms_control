module TitanControl
  class CmsMeta < ActiveRecord::Base
    include TitanControl::ModelCommonality::Contentable
    include TitanControl::ModelCommonality::RouteReload

    METAABLES = ['TitanControl::CmsPage','FileResource','Product']
    ACCESSES = ['public','private'].freeze

    belongs_to :metaable, :polymorphic => true

    validates :metaable, :presence => true
    validates :metaable_type, :inclusion => {:in => METAABLES}
    validates :url, :presence => true, :uniqueness => true
    validates :title, :presence => true
    validates :access, :inclusion => {:in => ACCESSES}

    before_validation(:on => :create) do
      set_access
    end

    def get_current
    end

    private

    def set_access
      self.access = 'public' if self.access.blank?
    end

  end
end