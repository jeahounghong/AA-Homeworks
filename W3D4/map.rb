
class Map

    def initialize
        @map = []
        @keys = []
    end

    def set(key,val)
        if @keys.include?(key)
            @map[@keys.index(key)][1] = val
        else
            @map << [key,val]
            @keys << key
        end
    end

    def get(key)
        return nil if !@keys.include?(key)
        idx = @keys.index(key)
        return @map[idx][1]
    end

    def delete(key)
        return nil if !@keys.include?(key)
        idx = @keys.index(key)
        @keys.slice!(idx)
        @map.slice!(idx)
    end

    def show
        @map
    end

end