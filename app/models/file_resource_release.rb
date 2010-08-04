class FileResourceRelease < ActiveRecord::Base
  belongs_to :file_resource

  validates_presence_of :file_resource, :file
  validates_uniqueness_of :file, :scope => :file_resource_id, :message => "name already exists. New release names must be unique."

  def self.upload(uploaded_file, file_resource)
    if uploaded_file.is_a?(Tempfile) && file_resource.instance_of?(FileResource)
      release = file_resource.file_resource_releases.new
      release.file = uploaded_file.original_path

      if release.valid?
        save_to_folder = File.join(RAILS_ROOT, 'file_resources', file_resource.id.to_s)
        FileUtils.mkdir_p(save_to_folder) unless File.exists?(save_to_folder)

        save_as = File.join(save_to_folder, uploaded_file.original_path)
        File.open(save_as.to_s, 'w') do |file|
          file.write(uploaded_file.read)
        end

        release.save!
      end
      return release
    end
  end

end
