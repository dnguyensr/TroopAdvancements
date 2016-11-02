class CreateRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :ranks do |t|
      t.string :rank
      t.text :description
      t.date :completed
    end
  end
end
