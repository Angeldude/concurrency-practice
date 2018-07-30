class Dates

    def date_parts(date_string)
        date_string.split('-').map(&:to_i)
    end

    def julian(date_string)
    end
end