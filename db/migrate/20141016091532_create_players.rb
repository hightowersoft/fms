class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :firstname, limit: 30
      t.string :surname, limit: 30
      t.string :position
      t.text :bio

      t.timestamps
    end
  end
end
