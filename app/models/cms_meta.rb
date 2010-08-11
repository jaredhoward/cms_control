class CmsMeta < ActiveRecord::Base
  include CommonContentable
  include CommonRouteReload

  METAABLES = ['CmsPage','FileResource','Product']
  ACCESSES = ['public','private'].freeze

  belongs_to :metaable, :polymorphic => true

  validates_presence_of :metaable, :url, :title
  validates_inclusion_of :metaable_type, :in => METAABLES
  validates_inclusion_of :access, :in => ACCESSES
  validates_uniqueness_of :url

  before_validation_on_create :set_access

  def get_current
  end

private

  def set_access
    self.access = 'public' if self.access.blank?
  end

end
