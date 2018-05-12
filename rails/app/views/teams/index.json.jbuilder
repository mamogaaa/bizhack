json.teams teams do |team|
  json.(team, :id, :name, :coach, :abbr, :stadium, :logo)
  json.division team.division
  json.conference team.conference
end