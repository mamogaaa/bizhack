class CreatePlayerInTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :player_in_teams do |t|
      t.belongs_to :player
      t.belongs_to :team
      t.belongs_to :season

      t.string :shirt_number
      t.decimal :salary, precision: 10, scale: 2
      t.integer :starter_index

      t.timestamps
    end
  end
end
