class User < ActiveRecord::Base
  has_secure_password
  has_many :upvotes
  has_many :comments
  has_many :followings
  has_many :followed_artists, through: :followings, source: :artist


end
