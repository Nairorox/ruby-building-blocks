stockArray = [17,3,6,9,15,8,6,1,10]
def stock_picker(array)
  best = 0
  buyDay=0
  sellDay=0
  array.each_with_index do |buyprice, index|
      array.drop(index).each_with_index do |sellprice, sellindex|
        if ((sellprice - buyprice) > best)
        sellDay = sellindex + index
        buyDay = index
        puts  "Best offer: " +  (best = sellprice - buyprice).to_s
        puts "Sell price: " + sellprice.to_s
        puts "Buy price: " + buyprice.to_s
        end

      end
  end
  puts "\nBuy day: " + buyDay.to_s
  puts "Sell day: " + sellDay.to_s
  puts best

end

stock_picker(stockArray)
