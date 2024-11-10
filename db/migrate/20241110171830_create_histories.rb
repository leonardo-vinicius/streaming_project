class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.integer :progress
      t.datetime :last_watched_at
      t.references :user, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
