#it should puts a string telling you it started the block and another string
#at the end telling you it finished and also telling you what the block
#returned.

def log descript, &block
  puts "Starting \"#{descript}\"..."
  result = block.call
  puts "...ended the #{descript.inspect}. Returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  '0' == 0
end