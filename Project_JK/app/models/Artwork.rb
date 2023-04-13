class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :image_url, uniqueness: true
    validates :artist_id, uniqueness: {scope: :title}

    belongs_to :artist,
    class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :viewers,
        source: :viewer 
end
