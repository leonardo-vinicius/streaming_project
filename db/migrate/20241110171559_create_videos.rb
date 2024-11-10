class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.datetime :release_date
      t.string :genre
      t.integer :duration
      t.string :url_video
      t.string :url_image
      t.string :type

      t.timestamps
    end
  end
end
