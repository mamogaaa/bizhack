class ConferenceDecorator < Draper::Decorator
  delegate :id, :name, :created_at, :updated_at, to: :object

  def divisions
    @divisions ||= object.divisions.decorate
  end
end
