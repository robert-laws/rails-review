class City < ApplicationRecord
  belongs_to :country

  # validations for city
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :population, presence: true
end
