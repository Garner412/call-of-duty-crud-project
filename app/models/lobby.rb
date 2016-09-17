class Lobby < ActiveRecord::Base
  # Remember to create a migration!
  has_many :maps
  has_many :game_mode
end
