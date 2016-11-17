class CreateRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :requirements do |t|
      t.integer :number
      t.text :description
      t.date :completed
      t.integer :rank_id

      t.timestamps
    end
  end
end
