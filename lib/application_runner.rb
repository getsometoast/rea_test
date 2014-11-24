#!/usr/bin/env ruby

require_relative 'application'
require_relative 'table'
require_relative 'Robot'
require_relative 'commands/factory'
require_relative 'commands/move'
require_relative 'commands/place'
require_relative 'commands/left'
require_relative 'commands/right'
require_relative 'commands/report'
require_relative 'input_parser'
require_relative 'badly_formed_command'
require_relative 'position'
require_relative 'simulator'

REATest::Application.new(ARGV[0]).run
