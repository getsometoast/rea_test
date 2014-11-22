require_relative '../../lib/application'
require_relative '../../lib/input_parser'
require_relative '../../lib/position'
require_relative '../../lib/place'
require_relative '../../lib/factory'
require_relative '../../lib/simulator'
require_relative '../../lib/report'
require_relative '../../lib/Robot'
require_relative '../../lib/table'
require_relative '../../lib/move'
require_relative '../../lib/left'
require_relative '../../lib/right'
require_relative 'command_helpers'
require_relative 'input_parser_helpers'
require 'rspec'

RSpec.configure do |config|
  config.include(CommandHelpers)
  config.include(InputParserHelpers)
end
