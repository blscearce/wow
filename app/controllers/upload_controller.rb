class UploadController < ApplicationController
  def index
    render :file => 'app/views/upload/uploadfile.html.erb'
  end

  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "Upload successful"
  end
end
