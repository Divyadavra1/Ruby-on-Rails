def answer(ans)
    if ans == "Yes" || ans == "yes"
      print "Ken does too"
    elsif ans == "No" || ans == "no"
      print "Dogs are better"
    else 
      print "It's hard to decide"
    end
  end
  
  puts "Do you like cats (Yes or No)?"
  ans = gets.chomp
  
  puts answer(ans)