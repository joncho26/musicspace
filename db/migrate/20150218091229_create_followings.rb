class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.references :user, null:false
      t.references :artist, null:false
    end
  end
end
