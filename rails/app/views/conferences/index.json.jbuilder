json.conferences conferences do |conference|
  json.(conference, :id, :name) 
  json.divisions conference.divisions do |division|
    json.(division, :id, :name)
  end
end