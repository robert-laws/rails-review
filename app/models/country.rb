class Country < ApplicationRecord
  def self.finnish
    where(name: 'Finland') # model scope
  end

  def country_summary
    self.name + " - " + self.capital
  end
end
