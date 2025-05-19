class StringCalculator
    def self.add(nums)
     return 0 if nums.empty?
    delimiters = [",", "\n"]

    if nums.start_with?("//")
      delimiter_section, nums = nums.split("\n", 2)
      custom_delimiter = delimiter_section[2] 
      delimiters = [custom_delimiter]
    end

    parts = nums.split(Regexp.union(delimiters)).map(&:to_i).sum
  
    end

end
