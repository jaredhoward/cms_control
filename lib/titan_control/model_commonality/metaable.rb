module TitanControl
  module ModelCommonality::Metaable

    def self.included(base)
      base.has_one :cms_meta, :as => :metaable, :class_name => 'TitanControl::CmsMeta', :dependent => :destroy

      base.scope :public_access, base.joins(:cms_meta).where(:titan_control_cms_metas => {:access => 'public'})
      base.scope :meta_title_order, base.joins(:cms_meta).order('`titan_control_cms_metas`.`title` ASC')

      base.accepts_nested_attributes_for :cms_meta

      base.before_validation(:on => :create) do
        associate_cms_meta_metaable_to_self
      end
    end

    def is_showable
      true
    end

    private

    def associate_cms_meta_metaable_to_self
      self.cms_meta.metaable = self if self.cms_meta.metaable.nil?
    end

  end
end