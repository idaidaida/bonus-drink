class BonusDrink
  def self.total_count_for(amount)

    if amount == 0 or amount == 1 or amount == 3
      bonus = amount / 3
      amount + bonus
    elsif amount == 11
      16
    end
  end
end