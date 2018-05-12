class Team < ApplicationRecord
  belongs_to :division

  has_many :player_in_teams
end
