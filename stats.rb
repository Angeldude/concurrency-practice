class Stats

    def maximum(nums)
        nums.max
    end

    def minimum(nums)
        nums.min
    end

    def range(nums)
        [maximum(nums), minimum(nums)]
    end
end