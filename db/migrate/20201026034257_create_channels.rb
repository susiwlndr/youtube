class CreateChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :channels do |t|
      t.integer :user_id
      t.text :deskripsi

      t.timestamps
    end
  end
end
