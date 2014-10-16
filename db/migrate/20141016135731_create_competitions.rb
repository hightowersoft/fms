class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.boolean :is_league

      t.timestamps
    end
  end
end
