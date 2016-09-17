class CreateGameModes < ActiveRecord::Migration
  def change
    create_table :game_modes do |t|
      t.string   :name
      t.integer  :user_id
      t.integer  :lobby_id

      t.timestamps(null: false)
    end
  end
end
