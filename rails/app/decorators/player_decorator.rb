class PlayerDecorator < Draper::Decorator
  delegate :id, :name, :email, :join_date, :height, :weight, :date_of_birth, :college, :image, :is_retirment, :retirment_date, :created_at, :updated_at, to: :object

  def country
    @country ||= object.country.code
  end
end