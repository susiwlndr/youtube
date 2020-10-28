class CreateSubscriptionMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_musics do |t|
    	t.references :music, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
