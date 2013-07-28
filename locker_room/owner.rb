module Gym

	class Owner
    attr_accessor :name
    attr_accessor :address

    def intialize(name, address)
      self.name = name
      self.address = address
    end
	end

end