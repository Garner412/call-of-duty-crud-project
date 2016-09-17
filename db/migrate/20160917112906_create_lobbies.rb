class CreateLobbies < ActiveRecord::Migration
  def change
    create_table :lobbies do |t|
      t.integer  :map_id

      t.timestamps(null: false)
    end
  end
end
