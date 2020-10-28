class RemoveComment < ActiveRecord::Migration[6.0]
  def change
  	remove_column :musics, :comment, :text
  end
end
