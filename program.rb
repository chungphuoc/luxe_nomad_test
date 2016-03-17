require_relative "dollar_exchange"

include DollarExchange
puts 'Input the dollar value:'
dollar = gets.strip
dollar_break_down(dollar.to_f).map { |k, v| puts "#{k}: #{v}" }