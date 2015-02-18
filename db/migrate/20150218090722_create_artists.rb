class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null:false
      t.string :pic_url, null:false
      t.text   :bio, null:false
    end
  end
end
