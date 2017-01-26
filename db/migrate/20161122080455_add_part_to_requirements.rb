class AddPartToRequirements < ActiveRecord::Migration[5.0]
  def change
    add_column :requirements, :part, :string
  end
end
