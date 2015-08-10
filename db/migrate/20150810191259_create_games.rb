class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team
      t.integer :away_team
      t.datetime :time
      t.integer :home_score
      t.integer :away_score
      t.integer :winner

      t.timestamps null: false
    end
  end
end
