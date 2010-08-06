class FileResourceRelease < ActiveRecord::Base
  attr_accessor :file_upload, :make_current

  belongs_to :file_resource

  validates_presence_of :file_resource, :file
  validates_uniqueness_of :file, :scope => :file_resource_id, :message => "name already exists. New release names must be unique.", :if => Proc.new {|r| !r.file_resource_id.nil? }

  after_save :save_uploaded_file, :set_file_resource_current_release
  after_destroy :delete_save_file

  def file_upload=(uploaded_file)
    if uploaded_file.is_a?(Tempfile)
      self.file = uploaded_file.original_filename
      @file_upload = uploaded_file
    end
  end

  def save_file_path
    File.join(self.file_resource.save_folder_path, self.file)
  end

private

  def save_uploaded_file
    if !@file_upload.nil?
      if @file_upload.is_a?(Tempfile)
        self.file = @file_upload.original_filename

        File.open(save_file_path, 'w') do |file|
          file.write(@file_upload.read)
        end
      end

      @file_upload = nil
    end
  end

  def set_file_resource_current_release
    if self.make_current == '1'
      self.file_resource.current_release = self
      self.file_resource.save!
    end
  end

  def delete_save_file
    File.delete(save_file_path)
  end

end
