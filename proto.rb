

class Responder
    def initialize(name)
        @name = name
    end

    def response(input)
        input = input + "ってなに？"
        return input
    end

    def name
        return @name
    end
end


class Unmo
    def initialize(name)
        @name = name
        @responder = Responder.new('What')
    end

    def dialog (input)
        return @responder.response(input)
    end

    def responder_name
        return @responder.name
    end

    def name 
        return @name
    end
end

    def prompt(unmo)
        return unmo.name + ':' + unmo.responder_name + '>'
    end

    proto = Unmo.new('proto')

    while true 
        print ('>')
        input = gets.chomp!
        break if input == "end"

        response = proto.dialog(input)
        puts prompt(proto) + response
    end

