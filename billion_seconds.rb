billion = 10**9 #billion
sund = Time.local(1990, 1, 18, 14, 32)
kumme = sund + billion
tana = Time.new

vahe = (kumme - tana)
aasta = vahe/60/60/24/365 #minutid, tunnid, paevad, aastad
paev = vahe/60/60/24%365
tunnid = vahe/60/60%24
minutid = vahe/60%60

puts sund
puts kumme
puts tana
puts "#{aasta.to_i} aastat"
puts "#{paev.to_i} paeva"
puts "#{tunnid.to_i} tundi"
puts "#{minutid.to_i} minutit"

puts(Time.gm(1976, 8, 3, 13, 31) + 10**9)