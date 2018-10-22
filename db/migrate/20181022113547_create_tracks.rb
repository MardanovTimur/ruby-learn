class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :url
      t.boolean :streamable
      t.integer :listeners
      t.string :image

      t.timestamps
    end
  end
end
