class Cheese < ApplicationRecord
  
  def summary
    "#{self.name}: $#{self.price}"
  end

  def self.most_expensive
    Cheese.all.max_by { |cheese| cheese.price }
  end

end
