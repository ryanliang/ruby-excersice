module Gym
	module Locker

		class LockerBase
      attr_accessor :owner
      attr_reader :expiry_date

      def intilaize(owner)
        self.owner = owner        
      end
		end

	end
end