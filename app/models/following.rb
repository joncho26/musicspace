class Following < ActiveRecord::Base
  belongs_to :user
  belongs_to :artist

  validates :user, uniqueness: true
  validates :artist, uniqueness: true
end
