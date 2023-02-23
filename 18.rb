def met 
    yield 1
    puts "This is method"
    yield 2
    puts "This is method2"
end
met{|i| puts "this is block#{i}"}
