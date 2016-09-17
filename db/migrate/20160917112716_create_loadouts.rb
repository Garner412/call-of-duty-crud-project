class CreateLoadouts < ActiveRecord::Migration
  def change
    create_table :loadouts do |t|
      t.integer  :user_id
      t.string   :primary_weapon
      t.string   :secondary_weapon

      t.timestamps(null: false)
    end
  end
end
