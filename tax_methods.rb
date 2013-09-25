#w01_d03_092513 meal tax calculation using methods
TaxRate = 0.045

def initial_prompt()
    ask('How much did you pay?')
    pretax_total = gets
    pretax_total.chomp!

    puts 'How much do you want to tip?'
    puts 'Tip will be calculated pretax'
    tip_input = gets
    tip_input.chomp!

    calc_total(pretax_total, tip_input)
end

def ask(question)
  puts(question)
  answer = gets.chomp!
  return answer
end



def calc_total(bill, tip)
    tax_rate = TaxRate
    bill = bill.to_f
    tip = tip.to_f
    tip_rate = tip / 100
    tip_amount = bill * tip_rate
    bill_w_tip = bill + tip_amount
    tax_amount = bill_w_tip * tax_rate
    bill_total = bill_w_tip + tax_amount

    puts "your total is " + bill_total.to_s

end

  initial_prompt()