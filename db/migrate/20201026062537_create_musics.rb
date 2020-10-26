class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.integer :user_id
      t.integer :channel_id
      t.string :title
      t.text :description
      t.text :comment

      t.timestamps
    end
  end
end
