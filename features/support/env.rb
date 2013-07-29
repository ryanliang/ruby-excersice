$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "../../locker_room", "./"))
$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "../../locker_room/locker", "./"))

require 'rspec/expectations'
require 'owner'
require 'daily_locker'
include Gym
include Locker

World(RSpec::Matchers)