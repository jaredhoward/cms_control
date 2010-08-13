class FileResource < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  belongs_to :current_release, :class_name => 'FileResourceRelease', :foreign_key => 'current_release_id'
  has_many :file_resource_releases, :dependent => :destroy
  has_many :product_file_resources, :dependent => :destroy

  accepts_nested_attributes_for :file_resource_releases
  accepts_nested_attributes_for :product_file_resources, :allow_destroy => true

  validates_presence_of :name, :download_url
  validates_uniqueness_of :name, :download_url

  before_validation_on_create :associate_releases_to_self
  after_create :assign_current_release
  after_destroy :delete_save_folder


  def is_showable
    return true
  end

  def save_folder_path
    unless defined?(@save_folder_path)
      @save_folder_path = File.join(RAILS_ROOT, 'file_resources', self.id.to_s)
      FileUtils.mkdir_p(@save_folder_path) unless File.exists?(@save_folder_path)
    end
    @save_folder_path
  end

private

  def associate_releases_to_self
    self.file_resource_releases.each {|r| r.file_resource = self if r.file_resource.nil? }
  end

  def assign_current_release
    if current_release.nil?
      unless self.file_resource_releases.empty?
        self.current_release = self.file_resource_releases.first
        self.save!
      end
    end
  end

  def delete_save_folder
    FileUtils.rm_r(save_folder_path, :force => true)
  end

end
