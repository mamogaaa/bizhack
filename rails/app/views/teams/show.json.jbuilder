json.team do
  json.(team, :id, :name, :coach, :abbr, :stadium, :logo)
  json.division team.division
  json.conference team.conference
  json.players team.player_in_teams do |player_in_team|
    json.(player_in_team.player, :id, :name, :email, :join_date, :height, :weight, :date_of_birth, :college, :image, :is_retirment)
    json.(player_in_team, :shirt_number, :salary, :starter_index)
  end
end