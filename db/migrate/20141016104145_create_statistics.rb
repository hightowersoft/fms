class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :fixture_id
      t.integer :player_id
      t.boolean :mom_manager
      t.boolean :mom_opposition
      t.integer :goals
      t.integer :stars
      t.boolean :yellow_card
      t.boolean :red_card

      t.timestamps
    end
  end
end
