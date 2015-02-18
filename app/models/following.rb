class Following < ActiveRecord::Base
  belongs_to :user
  belongs_to :artist


  validates :artist, uniqueness: true
end
