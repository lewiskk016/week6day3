class ArtworksController < ApplicationController

def index
    @artworks = Artwork.all
    render json: @artworks(params[:id])

end

def create
    @artworks = Artwork.new(artworks_params)
    if  @artworks.save
        render json: @artworks
    else
        render json: @artworks.errors.full_messages, status: :unprocessable_entity
    end
end

def show
        @artworks = Artwork.find(params[:id])
        render json: @artworks
end

def update
    @artworks = Artwork.find(params[:id])
    if @artworks.update(artworks_params)
        redirect_to artwork_url(@artworks)
    else
        render json: @artworks.errors.full_messages, status: 422
    end
end

def destroy
    @artworks = Artwork.find(params[:id])
    @artworks.destroy
    redirect_to artworks_url
end

private
def artworks_params
    params.require(:artworks).permit(:title, :image_url, :artist_id)
end
end
