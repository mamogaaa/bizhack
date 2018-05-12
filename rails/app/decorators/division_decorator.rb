class DivisionDecorator < Draper::Decorator
  delegate :id, :name, :created_at, :updated_at, to: :object

  def conference
    @conference ||= object.conference.decorate
  end
end
