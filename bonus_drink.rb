class BonusDrink
  EXCHANGE = 3

  def self.total_count_for(amount)
    drinked = 0
    drinkable = amount
    loop {
      present = drinkable.divmod(EXCHANGE)
      drinked += present[0] * EXCHANGE 
      drinkable = present[0] + present[1]
      if (drinkable < EXCHANGE) then
        drinked += drinkable
        break
      end
    }
    return drinked
  end
end

=begin
  print "購入数：0、飲める本数：",BonusDrink.total_count_for(0),"\n"
  print "購入数：1、飲める本数：",BonusDrink.total_count_for(1),"\n"
  print "購入数：3、飲める本数：",BonusDrink.total_count_for(3),"\n"
  print "購入数：11、飲める本数：",BonusDrink.total_count_for(11),"\n"
  print "購入数：100、飲める本数：",BonusDrink.total_count_for(100),"\n"
  print "購入数：10000000、飲める本数：",BonusDrink.total_count_for(10000000),"\n"
=end 
