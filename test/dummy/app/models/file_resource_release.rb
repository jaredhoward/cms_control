class FileResourceRelease < ActiveRecord::Base
  attr_accessor :file_upload, :make_current

  belongs_to :file_resource

  validates :file_resource, :presence => true
  validates :file, :presence => true, :uniqueness => {:scope => :file_resource_id, :message => "name already exists. New release names must be unique.", :if => Proc.new {|r| !r.file_resource_id.nil? }}

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
      # This is kind of ugly but it's avoids an infinite loop for saving with the association.
      fr = self.file_resource.class.find(self.file_resource)
      fr.current_release_id = self.id
      fr.save!
    end
  end

  def delete_save_file
    File.delete(save_file_path)
  end

end