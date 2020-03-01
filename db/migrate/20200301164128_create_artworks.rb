class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image_url
      t.integer :artist_id

      t.timestamps
    end
    add_index :artworks, :artist_id
    add_index :artworks, :image_url, unique: true
    add_index :artworks, [:title, :artist_id], unique: true
  end
end
