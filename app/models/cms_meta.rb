class CmsMeta < ActiveRecord::Base
  belongs_to :metaable, :polymorphic => true
  belongs_to :current_cms_content, :class_name => 'CmsContent'
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  # accepts_nested_attributes_for :current_cms_content, :cms_contents

  validates_presence_of :metaable, :url, :title#, :current_cms_content_id
  validates_uniqueness_of :url

  def self.get_current(url)
    meta = self.find_by_url(url)

    if(meta && meta.metaable.is_showable)
      return meta
    else
      return nil
    end
    
  end

end
