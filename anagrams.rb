def first_anagram?(str1, str2)
    possible_anagrams = str1.chars.permutation.to_a
    return true if possible_anagrams.include?(str2.chars)
    return false
end

def second_anagram?(str1, str2)
    str1.chars.each do |letter|
        idx = str2.chars.find_index(letter)
        str2.slice!(idx) if !idx.nil?
    end
    return true if str2.empty?
    false
end

def third_anagram?(str1, str2)
    str1 = str1.chars.sort.join
    str2 = str2.chars.sort.join
    return true if str1 == str2
    false
end

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)

    str1.chars.each do |char|
        hash[char] += 1
    end

    str2.chars.each do |char|
        hash[char] -= 1
    end
    return true if hash.values.all? {|val| val == 0}
    false
end