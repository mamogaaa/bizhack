class TeamDecorator < Draper::Decorator
  delegate :id, :name, :coach, :abbr, :stadium, :logo, :created_at, :updated_at, to: :object

  def division
    @division ||= object.division
  end

  def conference
    @conference ||= division.conference
  end

  def player_in_teams
    @player_in_teams ||= object.player_in_teams.decorate
  end
end
