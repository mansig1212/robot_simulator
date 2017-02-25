require 'rspec'
Dir[File.join(File.dirname(__FILE__), "../lib/**/*.rb")].each do |file|
  puts file
  require file
end
include RobotSimulator
