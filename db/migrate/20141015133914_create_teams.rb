class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :short_name, limit: 15
      t.string :long_name, limit: 100
      t.boolean :is_main
      t.boolean :in_league

      t.timestamps
    end
  end
end
