# require './getkey'
require 'celluloid/current'



class Bit
    include Celluloid
    def initialize
      @state = false
    end

    def to_s
      "I am currently #{@state}"
    end

    def toggle(bang)
      @state = bang ? !@state : @state
    end
end

b = Bit.pool

instructions =[nil,nil,nil,1,nil]

loop do
    instructions.map{|x| b.future.toggle(x)}
    puts b
    sleep 1
end
