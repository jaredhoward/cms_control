class CmsMeta < ActiveRecord::Base
  belongs_to :metaable, :polymorphic => true
  belongs_to :current_cms_content, :class_name => 'CmsContent'
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  validates_presence_of :metaable, :url, :title, :current_cms_content_id
  validates_uniqueness_of :url
end
