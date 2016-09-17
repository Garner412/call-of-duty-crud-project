class GameMode < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :lobbies
  belongs_to :users
end
