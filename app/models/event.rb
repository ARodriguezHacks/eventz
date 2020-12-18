class Event < ApplicationRecord
  def free?
    price.blank? || price.zero?
  end
end

class Hello
  def hi
    price.blank?
  end
end
