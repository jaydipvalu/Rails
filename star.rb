def array
  print "enter your number"
  array = gets.chomp.split(',').map(&:to_i)
  for i in array do
    puts "i #{*}"
  end
end
