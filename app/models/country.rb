class Country < ApplicationRecord
  # relationships
  has_many :cities

  # validations
  validates :name, presence: true
  validates :capital, presence: true

  # custom scope without parameters, can be interchanged with class methods
  scope :finnish, -> { where("name == ?", "Finland") }
  scope :big_population, -> { where("population > ?", 5500000)}
  scope :late_independence, -> { where("foundation_year > ?", 1800)}

  # model class method
  def self.country_name(name)
    where("name == ?", name)
  end

  # model instance method
  def country_summary
    self.name + " - " + self.capital
  end

  # callback
  after_validation :check_error_message

  private

  def check_error_message
    # puts "remember to check error message..."
  end
end
