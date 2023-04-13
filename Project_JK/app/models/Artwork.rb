class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :image_url, uniqueness: true
    validates :title, uniqueness: {scope: :artist_id}

    belongs_to :artist,
    class_name: :User

end