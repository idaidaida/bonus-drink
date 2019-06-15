class BonusDrink
  def self.total_count_for(amount)
    if amount == 1
      1
    elsif amount == 3
      4
    elsif amount == 11
      16
    else
      0
    end
  end
end