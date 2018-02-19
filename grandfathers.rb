#Grandfather clock. Write a method that takes a block and calls it once for
#each hour that has passed today. That way, if I were to pass in the block:

def ding &block
  tund = Time.new.hour
  tund.times do
    block.call 
  end
end

ding do
  puts 'DONG!'
end
