class FileResource < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  ACCESSES = ['public','private'].freeze

  belongs_to :current_release, :class_name => 'FileResourceRelease', :foreign_key => 'file_resource_release_id'
  has_many :file_resource_releases, :dependent => :destroy
  has_many :product_file_resources, :dependent => :destroy

  accepts_nested_attributes_for :file_resource_releases

  validates_presence_of :name, :download_url
  validates_uniqueness_of :name, :download_url
  validates_inclusion_of :access, :in => ACCESSES

  before_validation_on_create :set_access

  def is_showable
    return true
  end

  def save_release(uploaded_file, make_current = false)
    new_release = self.file_resource_releases.upload(uploaded_file, self)

    if new_release.nil?
      return false
    elsif new_release.new_record?
      return false, new_release.errors
    else
      if make_current == true && !new_release.nil?
        self.current_release = new_release
        self.save!
      end
      return true
    end
  end

private

  def set_access
    self.access = 'public' if self.access.blank?
  end

end
