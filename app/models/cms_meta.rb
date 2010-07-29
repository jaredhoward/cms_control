class CmsMeta < ActiveRecord::Base
  include CommonContentable
  include CommonRouteReload

  METAABLES = ['CmsPage','FileResource','Product']

  belongs_to :metaable, :polymorphic => true

  validates_presence_of :metaable, :url, :title
  validates_inclusion_of :metaable_type, :in => METAABLES
  validates_uniqueness_of :url

  def get_current()
  end

end
