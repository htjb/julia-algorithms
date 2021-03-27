function reduce(num, count)
    if num == 1
        println("n = 1 and count = ", count)
        return count
    elseif num % 2 == 0
        num = num/2
    else
        num = num*3 + 1
    end
    count += 1
    reduce(num, count)
end

print("Enter a number > 1: ")
num = parse(Int64, readline())
reduce(num, 0)
