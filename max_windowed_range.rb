def max_windowed_range(arr, range)
    current_max_range = nil
    arr.each_with_index do |el, i|
        break if i + range > arr.length - 1 
        p max = arr[i...i + range].max 
        p min = arr[i...i + range].min
        if current_max_range.nil? || current_max_range < max - min
           current_max_range = max - min 
        end
    end
    current_max_range
end