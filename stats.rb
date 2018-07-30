module Stats

    def self.maximum(nums)
        nums.max
    end

    def self.minimum(nums)
        nums.min
    end

    def self.range(nums)
        [maximum(nums), minimum(nums)]
    end
end