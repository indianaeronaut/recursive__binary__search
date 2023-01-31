def recursive_binary_search(list, target)
    p list
    l = list.length 

    if l == 0 # Base case or stopping condition
        return false

    elsif l == 1 # Base case 2 or stopping condition 2
        if list[0] == target
            return true
        else
            return false
        end
    else
        mid_point = (l/2).floor

        if list[mid_point] == target
            return true
        else
            if list[(mid_point-1)] < target
                p list[mid_point..-1]
                return recursive_binary_search(list[mid_point..-1], target)
            else
                p list[0..mid_point-1]
                return recursive_binary_search(list[0..(mid_point-1)], target) 
            end

        end

    end
    
end

def verify(result)
    puts "Target found? : #{result}"
end

list = [1,2,3,4,5,6,7,8,9,10,11]

# Tests 
result = recursive_binary_search(list, 0)
verify(result)

result = recursive_binary_search(list, 1)
verify(result)

result = recursive_binary_search(list, 2)
verify(result)

result = recursive_binary_search(list, 10)
verify(result)

result = recursive_binary_search(list, 11)
verify(result)

result = recursive_binary_search(list, 12)
verify(result)

result = recursive_binary_search(list, -1)
verify(result)

result = recursive_binary_search(list, 1.2)
verify(result)