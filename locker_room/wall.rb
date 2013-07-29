require_relative 'locker/daily_locker'
require_relative 'locker/long_term_locker'

module Gym
  class Wall
    include Locker
    attr_reader :length
    attr_reader :width
    attr_reader :lockers
    # attr_reader :long_term_locker_count
    # attr_reader :daily_locker_count
    # attr_reader :vacant_locker_count


    def initialize(length, width)
      @length = length
      @width = width
      @lockers = Array.new(length) { Array.new(width) }
    end

    def put_locker_at_next_vacant_pos(locker)
      vacant_position = next_vacant_position
      put_locker_at(locker, vacant_position["x"], vacant_position["y"])
    end

    def put_locker_at(locker, x, y)
      if position_within_boundary(x, y) && vacant_at?(x, y)
        @lockers[x][y] = locker
    end

    def owner_name_at(x, y)
      if position_within_boundary(x, y) && !vacant_at?(x, y)
        @lockers[x][y].owner.name
      end
    end

    def locker_pos_by_owner_name(name)
      @lockers.each_index do |x|
        @lockers[x].each_index do |y|
          if !vacant_at?(x, y) && @lockers[x][y].owner.name.downcase == name.downcase
            position = {"x" => x, "y" => y}
            return position
          end
        end
      end
      nil # not found
    end

    def vacant_locker_count
      count_locker_by_type
      @vacant_locker_count
    end

    def daily_locker_count
      count_locker_by_type
      @daily_locker_count
    end

    def long_term__locker_count
      count_locker_by_type
      @long_term__locker_count
    end

    private
      def vacant_at?(x, y)
        position_within_boundary?(x, y) &&
        @lockers[x][y].nil?
      end

      def position_within_boundary?(x, y)
        x < @length && y < @width
      end

      def next_vacant_position
        @lockers.each_index do |x|
          @lockers[x].each_index do |y|
            if vacant_at?(x, y)
              vacant_position = {"x" => x, "y" => y}
              return vacant_position
            end
          end
        end
        nil # not found
      end

      # TODO: Imporove and iterate thourgh array only  if it's changed.
      def count_locker_by_type
        @long_term_locker_count = 0
        @daily_locker_count = 0
        @vacant_locker_count = 0

        @lockers.each_index do |x|
          @lockers[x].each_index do |y|
            case
            when @lockers[x][y].nil?  
              @vacant_locker_count = @vacant_locker_count + 1
            when @lockers[x][y].is_a?(Locker::DailyLocker)
              @daily_locker_count = @daily_locker_count + 1
            when @lockers[x][y].is_a?(Locker::LongTermLocker)
              @long_term_locker_count = @long_term_locker_count + 1
            end
          end
        end
      end

    # end private
  end
end