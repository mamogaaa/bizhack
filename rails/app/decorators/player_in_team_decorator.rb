class PlayerInTeamDecorator < Draper::Decorator
  delegate :id, :shirt_number, :salary, :starter_index, :created_at, :updated_at, to: :object

  def player
    @player ||= object.player
  end

  def team
    @team ||= object.team
  end

  def season
    @season ||= object.season
  end
end