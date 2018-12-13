class ChangeMaker
  attr_reader :total_price, :amount_paid

  def initialize(total_price, amount_paid)
    @total_price = total_price 
    @amount_paid = amount_paid 
  end

  def optimal_change
    total_change = amount_paid - total_price 
    currency_hash = {}
    denominations_and_floats = {
      '$100 bill'=> 100.00,
      '$50 bill'=> 50.00,
      '$20 bill'=> 20.00,
      '$10 bill'=> 10.00,
      '$5 bill'=> 5.00,
      '$1 bill'=> 1.00,
      'quarter'=> 0.25,
      'dime'=> 0.10,
      'nickel'=> 0.05,
      'penny'=> 0.01
    }

    if total_price > amount_paid
      return "Correct change please"
    end

    denominations_and_floats.each do |denom, value|
      while total_change >= value
        total_change -= value
        if currency_hash.has_key?(denom)
          currency_hash[denom] += 1
        else
          currency_hash[denom] = 1
        end
      end
    end

   action_taken = "The optimal change for a product that costs $#{total_price} with an amount paid of $#{amount_paid} is "
    
    currency_hash.each_with_index do |(denom, count), index|
      last_index = currency_hash.size - 1
      if index == last_index
       action_taken += 'and '
      end
      if count > 1 && denom == 'penny'
       action_taken += "#{count} pennies"
      elsif count > 1
       action_taken += "#{count} #{denom}s"
      else
       action_taken += "#{count} #{denom}"
      end
      if index != last_index
       action_taken += ', '
      else
       action_taken += '.'
      end
    end
   action_taken
  end
end
puts change = ChangeMaker.new(62.32, 100.00)
puts change.optimal_change