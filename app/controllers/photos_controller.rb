class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index" })
  end

  def show
    url_id = params.fetch("path_id")

    matching_photos = Photo.where({ :id => url_id })

    @the_photo = matching_photos.at(0)

    render({ :template => "photo_templates/show" })
  end

  def destroy
    the_id = params.fetch("path_id")
    
    @the_photo = Photo.where({ :id => the_id }).at(0)

    @the_photo.destroy

    redirect_to("/photos", { :notice => "Photo deleted successfully." })
  end
end

def create
  the_photo = Photo.new
  the_photo.caption = params.fetch("caption")
  # photo.image = params.fetch("image")
  
  # if photo.save
  #   redirect_to("/photos/#{photo.id}")
  # else
  #   render({ :template => "photos/new" })
  # end

  
  # the_id = params.fetch("path_id")
  
  # @the_photo = Photo.where({ :id => the_id }).at(0)

  # @the_photo.destroy
  render({ :template => "photo_templates/baii" })
  #redirect_to("/photos/<%=@the_photo.id%>")
end
