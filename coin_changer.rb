def coin (change)
    money = {quater: 25, dime: 10, nickel: 5, penny: 1}
    if change == 1
        {quater: 0, dime: 0, nickel: 0, penny: 1}
    elsif change == 5
        {quater: 0, dime: 0, nickel: 1, penny: 0}
    elsif change == 10
        {quater: 0, dime: 1, nickel: 0, penny: 0}
    elsif change == 25
        {quater: 1, dime: 0, nickel: 0, penny: 0}
    elsif change == 75 
        {quater: 3, dime: 0, nickel: 0, penny: 0}
    end
   
end
 
 def coin_2 (change2)
    wallet = {}
    money2 = {quater: 25, dime: 10, nickel: 5, penny: 1}
    money2.each do |key, amount|
        if change2 >= amount
            money2[key] = change2 % amount
           wallet[key] = amount
        end
        change2 = change2 % amount
    end
      p wallet
end


    
    

