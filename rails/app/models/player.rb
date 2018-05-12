class Player < ApplicationRecord
  has_and_belongs_to_many :positions

  belongs_to :country, class_name: "Country", foreign_key: :country_code, primary_key: :code
end
