module DollarExchange
  def dollar_break_down(dollar)
    result = {}
    total_cents = (dollar * 100).to_i
    ["quarters", "dimes", "nickels", "cents"].each do |denomination|
      case denomination
      when "quarters"
        quarters = total_cents / 25
        result["#{denomination}"] = quarters
        total_cents -= quarters * 25
      when "dimes"
        dimes = total_cents / 10
        result["#{denomination}"] = dimes
        total_cents -= dimes * 10
      when "nickels"
        nickels = total_cents / 5
        result["#{denomination}"] = nickels
        total_cents -= nickels * 5
      when "cents"
        result["#{denomination}"] = total_cents
      end
    end
    result
  end
end