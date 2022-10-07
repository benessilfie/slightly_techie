# cook your code here

no_of_ns = gets.chomp.to_i 

no_of_ns.times do
    n = gets.chomp.to_i

    # Initilize count 0
    count = 0
    
    if n >= 5
#  Keep dividing n by 5 & update Count
        while n >= 5
            n /= 5
            count += n
        end
        puts count
    else 
        puts 0
    end
end