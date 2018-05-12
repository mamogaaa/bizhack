json.divisions divisions do |division|
  json.(division, :id, :name)
  json.conference(division.conference, :id, :name) 
end