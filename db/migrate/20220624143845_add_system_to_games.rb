class AddSystemToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :system, null: false, foreign_key: true
  end
end
