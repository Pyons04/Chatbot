class Responder # Supuer class
    def initialize(name)
        @name = name
    end

    def response(input)
        return '' #This mehtod will be inherited by methos in  other classes
    end

    def name
        return @name
    end
end

class WhatResponder < Responder
    def response(input) 
        return "#{input} ってなに？"
    end
end

class RandomResponder < Responder
    def initialize(name)
        super #This is 'Vistual' in C#. This means name method in the super class will be executed when its called.
        @rensponses  = ["こんにちは","さようなら","ありがとう"]
    end

    def response(input)
        return @rensponses[rand(@rensponses.size)]
    end
end


