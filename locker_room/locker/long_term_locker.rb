$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "./", "./"))

require 'locker_base'

module Gym
	module Locker

		class LongTermLocker < LockerBase
      attr_accessor :expiry_date

      def intialize(owner, expiry_date)
        super(owner)
        self.expiry_date = expiry_date
      end
		end

	end
end