def my_min(arr)
    minimum = nil
    arr.each do |ele|
        minimum = ele if ele < minimum
    end
    minimum
end

def largest_contiguous_subsum(list)
    arr = []
    list.each_with_index do |ele, i|
        j = i
        while j < list.length
            arr << list[i..j]
            j += 1
        end
    end
    p arr 
    arr_of_sums = []
    arr.each do |ele|
        sum = 0
        ele.each {|num| sum += num}
        arr_of_sums << sum
    end
    p arr_of_sums
    arr_of_sums.max
end

def better_version(list)
    return list.max if list.all?{|num| num < 0} 
    sum = 0
    arr_of_sum = []  
    list.each_with_index do |el, i|        
        temp_sum = sum + el
        if i + 1 < list.length
            (temp_sum2 = sum + el + list[i+1]) 
        else
            temp_sum2 = 0
        end
        if temp_sum > sum
            sum = temp_sum
            if el > sum
                sum = el
            end
        elsif temp_sum2 > sum
            sum = temp_sum
        end
    end
    sum
end

