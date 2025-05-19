class StringCalculator
    def self.add(nums)
     return 0 if nums.empty?
    delimiters = [",", "\n"]

    if nums.start_with?("//")
      delimiter_section, nums = nums.split("\n", 2)
      if delimiter_section.include?("[")
        custom_delimiters = delimiter_section.scan(/\[([^\]]+)\]/).flatten
        delimiters = custom_delimiters
      else
        delimiters = [delimiter_section[2]]
      end
    end

  parts = nums.split(Regexp.union(delimiters)).map(&:to_i)

    negatives = parts.select { |n| n < 0 }
    raise "negatives not allowed: #{negatives.join(', ')}" if negatives.any?
     parts.select { |n| n <= 1000 }.sum
  
    end

end
