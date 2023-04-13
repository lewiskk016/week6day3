class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.text :image_url, null: false
      t.bigint :artist_id, null: false
      t.timestamps
    end

    add_index :artworks, :image_url, unique: true
    add_index :artworks, :artist_id
  end
end
