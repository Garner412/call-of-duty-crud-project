class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :loadouts
  has_many :game_modes
end
