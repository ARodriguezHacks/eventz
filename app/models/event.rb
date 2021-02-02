class Event < ApplicationRecord
  # Class methods because they start with self
  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end

  def free?
    price.blank? || price.zero?
  end
end

class Hello
  def hi
    price.blank?
  end
end
