class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, null:false
      t.references :user, null:false
      t.references :artist, null:false
    end
  end
end
