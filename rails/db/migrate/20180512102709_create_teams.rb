class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.belongs_to :division

      t.string :name
      t.string :coach
      t.string :abbr
      t.string :stadium
      t.string :logo

      t.timestamps
    end
  end
end
