function sort(arr)
    c = 0
    for i in 1:(length(arr)-1)
        if arr[i+1] < arr[i]
            dummy = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = dummy
            c += 1
        end
    end
    if c > 1
        sort(arr)
    else
        return arr
    end
end

arr = [2, 9, 5, 4, 3, 66, 2, 99, 101, 5.4]
println(arr)
sorted_arr = sort(arr)
println(sorted_arr)
