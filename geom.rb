require 'celluloid/current'

class Geom
    include Celluloid
    attr_reader :result

    def area(args)
        @result = area1(args[0], args[1], args[2])
    end

    private

    def area1(height=1, width=1, shape = {})
        if height < 0 || width < 0
            raise ArgumentError, "No negative values allowed"
        end
        case shape
        when :rectangle
            height * width
        when :triangle
            (width * height) * 0.5
        when :ellipse
            Math::PI * height * width
        else
            raise ArgumentError, "Missing or invalid shape"
        end
    end
end

