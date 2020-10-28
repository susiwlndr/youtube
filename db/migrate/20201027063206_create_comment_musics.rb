class CreateCommentMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_musics do |t|
      t.text :comment
      t.integer :user_id
      t.integer :music_id

      t.timestamps
    end
  end
end
