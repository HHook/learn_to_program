puts "TALK TO ME SONNY"
bye_count = 0 

while true
  me = gets.chomp
  if me == "BYE"
    bye_count = bye_count + 1
  else
    bye_count = 0
  end

  if bye_count >= 3
    puts "BYE-BYE CUPCAKE!"
    break
  end

  if me != me.upcase 
    puts "HUH?! SPEAK UP, SONNY!"
  else
    random_year = 1930 + rand(21)
    puts "NO, NOT SINCE " + random_year.to_s + "!"
  end
end