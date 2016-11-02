class CreateMeritBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :merit_badges do |t|
      t.string :meritbadge
      t.text :description
      t.date :completed

      t.timestamps
    end
  end
end
