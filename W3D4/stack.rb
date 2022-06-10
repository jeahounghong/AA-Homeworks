

class Stack

    attr_reader :stack

    def initialize(first_element = nil)
        @stack = []
        if first_element != nil
            @stack << first_element
        end

    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end


end