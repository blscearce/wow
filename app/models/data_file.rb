class DataFile < ActiveRecord::Base
  attr_accessor :upload
  def self.save(upload)
    name = upload['datafile'].original_filename
    File.open("/tmp/name", "wb") { |f| f.write(name) }
    path = File.join('/tmp', name)
    File.open(path, 'wb') { |f| f.write(upload['datafile'].read) }
  end
end
