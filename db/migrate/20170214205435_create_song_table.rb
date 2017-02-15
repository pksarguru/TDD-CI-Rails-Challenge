class CreateSongTable < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :artist, null: false

      t.timestamps
    end
  end
end
