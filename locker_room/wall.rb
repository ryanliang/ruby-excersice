module Gym
	class Wall
		attr_reader :length
		attr_reader :width

		def initialize(length, width)
			self.length = length
			self.width = width

			@lockers = Array.new(length) { Array.new(width) }
		end
	end    
end