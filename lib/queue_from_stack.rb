require_relative './stack'


class MyQueue


    def initialize
    @s1= Stack.new
    @s2= Stack.new
    end

    def add(value)
        @s1.push(value)
    end

    def remove 
        move_elements_from_s1_to_s2
        @s2.pop
    end

    def peek
        move_elements_from_s1_to_s2
        @s2.peek
    end
    private

    def move_elements_from_s1_to_s2

        until @s1.empty?
            @s2.push(@s1.pop)

        end
    end


end


# your code here
