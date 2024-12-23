class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :plan
      t.datetime :start_date
      t.datetime :enddate
      t.string :status
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
