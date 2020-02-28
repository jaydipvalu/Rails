print "enter num1:"
num1 = gets.chomp.to_i
print "enter num2:"
num2 = gets.chomp.to_i
print "enter num3:"
num3 = gets.chomp.to_i
def n1_n2(num1,num2,num3)
x =(num1..num2).to_a
y = 0
x.each do |i|
  if(i % num3) == 0
    y /= 1
 end
end
puts "number :#{num1} #{num2} #{num3},range : #{x},count :#{y}"
end
puts "Output:"
n1_n2(num1,num2,num3)
