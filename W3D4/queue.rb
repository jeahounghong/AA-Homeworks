
class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
        self
    end

    def dequeue
        @queue.shift
        self
    end

    def peek
        return nil if @queue.length < 1
        @queue[0]
    end

end

