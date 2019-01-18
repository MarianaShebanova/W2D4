def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele, i|
        arr.each_with_index do |el2, j|
            next if i == j
            return true if ele + el2 == target_sum
        end
    end
    false
end

def okay_two_sum?(arr, target_sum)
    sort_arr = arr.sort

    first = 0
    last = arr.length - 1
    while first < last
        sum = sort_arr[first] + sort_arr[last]
        if sum == target_sum
            return true
        elsif sum < target_sum
            first += 1
        else
            last -= 1
        end
    end
    false
end

def two_sum?(arr, target_sum)
    hash = {}
    arr.each do |el|
        hash[el] = el 
    end
    arr.each do |el|
        return true if hash.has_key?(target_sum - el) && el != target_sum - el 
    end
    false
end
