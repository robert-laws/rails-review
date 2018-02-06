class Country < ApplicationRecord
  # Model scope without parameters, can be interchanged with class methods
  scope :finnish, -> { where("name == ?", "Finland") }

  scope :big_population, -> { where("population > ?", 5500000)}
  scope :late_independence, -> { where("foundation_year > ?", 1800)}

  def self.country_name(name)
    where("name == ?", name)
  end

  def country_summary
    self.name + " - " + self.capital
  end
end
