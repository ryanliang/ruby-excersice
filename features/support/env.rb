$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "../../locker_room", "./"))

require 'rspec/expectations'
require 'owner'
include Gym

World(RSpec::Matchers)