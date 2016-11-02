class CreateMeritBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :merit_badges do |t|
      t.string :title
      t.text :description
      t.date :completed
    end
  end
end
