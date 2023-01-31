
def recursive_binary_search(list, target) 
    p list
    l = list.length
    mid_point = (l/2).ceil
    left_side = list[0..(mid_point-1)]
    right_side = list[mid_point..l]
    
    if l == 0
        return false
    elsif l == 1
        if list[0] == target
            return true
        else 
            return false
        end
    else
        if target < list[mid_point]
            list = left_side
            recursive_binary_search(list, target)
        else
            list = right_side
            recursive_binary_search(list, target)
        end

    end
    
end

def verify(result)
    puts "Target found? : #{result}"
end

list = [1,2,3,4,5,6,7,8,9,10,11]

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