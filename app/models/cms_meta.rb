class CmsMeta < ActiveRecord::Base
  include CommonContentable

  belongs_to :metaable, :polymorphic => true

  validates_presence_of :metaable, :url, :title
  validates_uniqueness_of :url

  def get_current()
  end

end
