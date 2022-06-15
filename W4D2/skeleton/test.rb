require 'Singleton'
class Klass
    include Singleton
end

require "colorize"

a = :K.to_s.green
puts a
puts a.colorize 'ffefe8'