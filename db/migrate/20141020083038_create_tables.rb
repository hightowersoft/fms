class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :team_id, index: true
      t.integer :played
      t.integer :won
      t.integer :drawn
      t.integer :lost
      t.integer :for
      t.integer :against
      t.integer :deducted

      t.timestamps
    end
  end
end
