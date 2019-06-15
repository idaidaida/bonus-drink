class BonusDrink
  def self.total_count_for(amount)

    # ボトルの合計本数と手元に所有している本数
    total_bottles = amount
    own_bottles = amount
    
    # ボトルを交換し続けられる限り、交換
    while exchangeble?(own_bottles) do
      
      remainig_bottles = submit_bottles_for_store(own_bottles)
      bonus_bottles = get_bonus_bottles_from_store(own_bottles)

      own_bottles = remainig_bottles + bonus_bottles
      total_bottles += bonus_bottles
    
    end

    return total_bottles

  end

  def self.exchangeble?(bottles_num)
    bottles_num / 3 >= 1
  end

  def self.submit_bottles_for_store(bottles)
    bottles % 3
  end

  def self.get_bonus_bottles_from_store(bottles)
    bottles / 3
  end

end