class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.integer :home_team
      t.integer :away_team
      t.integer :competition
      t.date :date
      t.boolean :played
      t.integer :home_score
      t.integer :away_score
      t.text :report      

      t.timestamps
    end
  end
end
