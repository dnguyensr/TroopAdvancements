class CreateAdvancements < ActiveRecord::Migration[5.0]
  def change
    create_table :advancements do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
