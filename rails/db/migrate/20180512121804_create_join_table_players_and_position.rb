class CreateJoinTablePlayersAndPosition < ActiveRecord::Migration[5.0]
  def change
    create_join_table :players, :positions do |t|
      t.index [:player_id, :position_id]
    end
  end
end
