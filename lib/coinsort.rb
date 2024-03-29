class Change
  def change(amount)
    available_coins  = [25,10,5,1]
    coins            = [] # holds list of coins to return
    remaining_amount = amount
    available_coins.each do |coin| # counts down finds biggest coins firs
      if ((remaining_amount/coin).to_int > 0)
      then (remaining_amount/coin).to_int.times { coins << coin }
        remaining_amount = amount - coins.inject(:+) # coins.inject(:+) sums array items
      end
    end
    return coins
  end
end
