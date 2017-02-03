class CreateSubRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_requirements do |t|
      t.string :part
      t.text :description
      t.integer :requirement_id

      t.timestamps
    end
  end
end
