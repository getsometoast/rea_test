require_relative '../support/spec_helper'

describe 'reporting a robots position' do

  context 'after the robot has been placed' do

    it 'reports the robots current position' do
      input_file = 'spec/aat/data/report_placed.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,NORTH/).to_stdout
    end
  end

  context 'before the robot has been placed' do

    it 'ignores the command' do
      input_file = 'spec/aat/data/report_not_placed.txt'
      expect { REATest::Application.new(input_file).run }.to output('').to_stdout
    end
  end
end
