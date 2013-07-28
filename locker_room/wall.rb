module Gym
	class Wall
		attr_accessor length
		attr_accessor width

		def initialize(length, width)
			self.length = length
			self.width = width

			@lockers = Array.new(length) { Array.new(width) }
		end
	end    
end