class CmsMeta < ActiveRecord::Base
  include CommonContentable

  belongs_to :metaable, :polymorphic => true

  validates_presence_of :metaable, :url, :title
  validates_uniqueness_of :url

  def self.get_current(url)
    meta = self.find_by_url(url)

    if meta && meta.metaable.is_showable
      return meta
    else
      return nil
    end
  end

end
