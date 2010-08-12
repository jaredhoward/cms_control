module CommonMetaable

  def self.included(base)
    base.has_one :cms_meta, :as => :metaable, :dependent => :destroy

    base.named_scope :public_access, :joins => :cms_meta, :conditions => {:cms_metas => {:access => 'public'}}

    base.accepts_nested_attributes_for :cms_meta

    base.before_validation_on_create :associate_cms_meta_metaable_to_self
  end

private

  def associate_cms_meta_metaable_to_self
    self.cms_meta.metaable = self if self.cms_meta.metaable.nil?
  end

end