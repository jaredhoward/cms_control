module TitanControl
  class CmsMeta < ActiveRecord::Base
    include TitanControl::ModelCommonality::Contentable
    include TitanControl::ModelCommonality::RouteReload

    ACCESSES = ['public','private'].freeze

    belongs_to :metaable, :polymorphic => true

    validates :metaable, :presence => true
    validates :metaable_type, :inclusion => {:in => Rails.application.config.titan_control.cms_metaables}
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