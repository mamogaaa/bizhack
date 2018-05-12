def parse_data_xlsx
  # return if Country.all.count > 0
  
  # # parsing data.xls
  # workbook = Roo::Spreadsheet.open "./data/data.xls"
  # worksheet = workbook.sheet(worksheets.first)
  # countries = []
  # worksheet.each_with_index do |row, ind|
  #   next if ind == 0
  #   countries << {
  #     code: row[0],
  #     name: row[1]
  #   }
  # end
end

def create_countries
  return if Country.all.count > 0
  # parsing Excel-data files/Country.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Country.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  countries = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    countries << {
      code: row[0],
      name: row[1]
    }
  end
  Country.create! countries
  puts "Created #{countries.count} countries.."
end

def create_conferences
  return if Conference.all.count > 0
  # parsing Excel-data files/Conference.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Conference.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  conferences = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    conferences << {
      id: row[0],
      name: row[1]
    }
  end
  Conference.create! conferences
  puts "Created #{conferences.count} conferences.."
end

def create_divisions
  return if Division.all.count > 0
  # parsing Excel-data files/Division.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Division.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  divisions = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    divisions << {
      id: row[0],
      name: row[1],
      conference_id: row[2]
    }
  end
  Division.create! divisions
  puts "Created #{divisions.count} divisions.."
end

def create_positions
  return if Position.all.count > 0
  # parsing Excel-data files/Position.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Position.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  positions = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    positions << {
      id: row[0],
      name: row[1],
      abbr: row[2]
    }
  end
  Position.create! positions
  puts "Created #{positions.count} positions.."
end

def create_teams
  return if Team.all.count > 0
  # parsing Excel-data files/Team.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Team.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  teams = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    teams << {
      id: row[0],
      name: row[1],
      division_id: row[2],
      abbr: row[3],
      coach: row[4],
      stadium: row[5],
      logo: row[6]
    }
  end
  Team.create! teams
  puts "Created #{teams.count} teams.."
end

def create_players
  return if Player.all.count > 0
  # parsing Excel-data files/Player.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Player.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  players = []
  positions = Position.all
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    players << {
      id: row[0],
      name: row[1],
      join_date: row[3],
      height: row[4],
      weight: row[5],
      date_of_birth: row[6],
      college: row[7],
      country: Country.find(row[8]),
      image: row[9],
      is_retirment: row[10],
      retirment_date: row[11],
      positions: [positions.find {|x| x.id == row[2].to_i}]
    }
  end
  Player.create! players
  puts "Created #{players.count} players.."
end

def create_seasons
  return if Season.all.count > 0
  # parsing Excel-data files/Season.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/Season.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  seasons = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    seasons << {
      id: row[0],
      name: row[1]
    }
  end
  Season.create! seasons
  puts "Created #{seasons.count} seasons.."
end

def create_player_in_teams
  return if PlayerInTeam.all.count > 0
  # parsing Excel-data files/PlayerInTeam.xlsx
  workbook = Roo::Spreadsheet.open "./data/Excel-data files/PlayerInTeam.xlsx"
  worksheet = workbook.sheet(workbook.sheets.first)

  player_in_teams = []
  worksheet.each_with_index do |row, ind|
    next if ind == 0
    player_in_teams << {
      id: row[0],
      player_id: row[1],
      team_id: row[2],
      season_id: row[3],
      shirt_number: row[4],
      salary: row[5],
      starter_index: row[6]
    }
  end
  PlayerInTeam.create! player_in_teams
  puts "Created #{player_in_teams.count} player in teams.."
end

# country_code
# email
# name
# join_date
# heigth
# weight
# date_of_birth
# college
# image
# is_retirment
# retirment_time


# 0 PlayerId 1.0
# 1 LastName Barkley
# 2 FirstName Ross
# 3 Gender Mr.
# 4 Height 196.0
# 5 Weight 112.0
# 6 ShirtNumber 18.0
# 7 Email lshj2824@163.com
# 8 Country Australia
# 9 Team Miami Heat
# 10 Abbr MIA
# 11 Position SmallForward;Center

create_countries
create_divisions
create_conferences
create_positions
create_teams
create_players
create_seasons
create_player_in_teams












