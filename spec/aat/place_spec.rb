require_relative '../support/spec_helper'

describe 'placing the robot' do

  context 'on the table' do

    it 'should set the robots current position' do
      input_file = 'spec/aat/data/place_on_table.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,NORTH/).to_stdout
    end
  end

  context 'off the table' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/place_off_table.txt'
      expect { REATest::Application.new(input_file).run }.to output('').to_stdout
    end
  end
end
