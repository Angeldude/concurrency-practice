require_relative 'geom'

module AskArea

    def self.area
      begin
       Geom.area(number_prompt(shape_prompt))
      rescue ArgumentError => e
        puts "One or more invalid values: #{e.message}"
      end
    end

    def self.shape_prompt
        puts "R)ectangle, T)riangle, or E)llipse: "
        s = gets.downcase.chomp
        case s[0]
        when 'r'
          :rectangle
        when 't'
          :triangle
        when 'e'
          :ellipse
        else
          :unknown
        end
      end

      def self.number_prompt(shape)
        prompts = []
        results = []
        case shape
        when :rectangle
          prompts <<  "Enter height > " <<  "Enter width > "
        when :triangle
          prompts <<  "Enter base > " << "Enter height > "
        when :ellipse
          prompts <<  "Enter major radius > " << "Enter minor radius > "
        else
          raise ArgumentError, "Unknown shape"
        end

        prompts.each{|pr| 
          print pr
          results << get_number(gets.downcase.chomp)
        }

        results + [shape]
      end

      def self.get_number(input)
        if input.to_i.to_s == input || input.to_f.to_s == input
          input.to_f
        elsif input.to_f < 0
          raise ArgumentError, "No negative values"
        else
          raise ArgumentError, "Not a number"
        end
      end

      class << self
        private :get_number, :number_prompt, :shape_prompt
      end

end