class Country < ApplicationRecord
  # relationships
  has_many :cities, dependent: :destroy
  has_many :diplomats, dependent: :destroy
  accepts_nested_attributes_for :diplomats

  # validations
  validates :name, presence: true
  validates :capital, presence: true
  # validates :membership_year, numericality: true
  validates :membership_year, presence: true, if: :eu_membership?

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

  def eu_membership?
    eu_membership
  end

  private

  def check_error_message
    # puts "remember to check error message..."
  end
end
