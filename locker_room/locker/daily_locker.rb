$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "./", "./"))

require 'locker_base'
require 'date'

module Gym
  module Locker

    class DailyLocker < LockerBase      

      def initialize(owner)
        super(owner)
        @expiry_date = Date.today
      end
    end

  end
end