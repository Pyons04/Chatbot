require './unmo.rb'
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

