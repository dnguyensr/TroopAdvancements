class CreateRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :requirements do |t|
      t.integer :number
      t.text :description
      t.date :completed
    end
  end
end
