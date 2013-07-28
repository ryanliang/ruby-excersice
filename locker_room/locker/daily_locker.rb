$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "./", "./"))

require 'locker_base'

module Gym
	module Locker
		class DailyLocker < Locker::LockerBase
		end
	end
end