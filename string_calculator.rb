class StringCalculator
    def self.add(nums)
     return 0 if nums.empty?
    parts = nums.gsub("\n",",").split(",").map(&:to_i)
    parts.sum
    end

end
