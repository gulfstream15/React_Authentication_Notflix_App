class Show < ActiveRecord::Base
  belongs_to :user

  has_many :favourite_shows

  # the last line of code is really the one below:
  # has_many :users, through: :favourite_shows
  # but we can use a 'favourited_by' which is a custom
  # method called on show

  has_many :favourited_by, through: :favourite_shows, source: :user
end