require_relative "dollar_exchange"

include DollarExchange
puts 'Input the dollar value:'
dollar = gets.strip
dollar = dollar.gsub(',', '.')
dollar_break_down(dollar.to_f).delete_if { |k, v| v.to_i == 0 }.map { |k, v| puts "#{k}: #{v}" }
