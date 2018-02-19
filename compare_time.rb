time = Time.new
time2 = Time.local(2018, 1, 1)
vahe = (time-time2)
paev = vahe/60/60/24
tunnid = vahe/60/60%24
minutid = vahe/60%60
tunnid2 = vahe/60/60
# vahe%60 sekundid

minutid = minutid.to_i
paev = paev.to_i
tunnid = tunnid.to_i
tunnid2 = tunnid2.to_i

puts time
puts time2
puts "Moodunud on #{paev}paeva, #{tunnid}tundi, #{minutid}minutit."
puts  "Kokku #{tunnid2}tundi"