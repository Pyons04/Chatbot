require './responder.rb'

class Unmo
    def initialize(name)
        @name = name
        @resp_random = RandomResponder.new('Random')
        @resp_what   = WhatResponder.new('What')
    end

    def dialog (input)
        @responder = rand(2) == 0 ? @resp_what : @resp_random
        return @responder.response(input)
    end

    def responder_name
        return @responder.name
    end

    def name 
        return @name
    end
end