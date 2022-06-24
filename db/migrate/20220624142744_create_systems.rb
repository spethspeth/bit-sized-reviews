class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :year
      t.string :company
      t.timestamps
    end
  end
end
