require 'rspec'

describe 'moving the robot' do

  context 'when facing north' do

    it 'moves the robot forward north' do
      input_file = 'spec/aat/data/move_north.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,1,NORTH/).to_stdout
    end

    it 'does not move off the table' do
      input_file = 'spec/aat/data/move_north_off.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,4,NORTH/).to_stdout
    end
  end

  context 'when facing south' do

    it 'moves the robot forward south' do
      input_file = 'spec/aat/data/move_south.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,SOUTH/).to_stdout
    end

    it 'does not move off the table' do
      input_file = 'spec/aat/data/move_south.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,SOUTH/).to_stdout
    end
  end

  context 'when facing east' do

    it 'moves the robot forward east' do
      input_file = 'spec/aat/data/move_east.txt'
      expect { REATest::Application.new(input_file).run }.to output(/1,0,EAST/).to_stdout
    end

    it 'does not move off the table' do
      input_file = 'spec/aat/data/move_east_off.txt'
      expect { REATest::Application.new(input_file).run }.to output(/4,0,EAST/).to_stdout
    end
  end
end
