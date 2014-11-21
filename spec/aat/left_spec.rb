require 'rspec'

describe 'rotating the robot left' do

  context 'heading north' do

    it 'updates the robots position to heading west' do
      input_file = 'spec/aat/data/left_from_north.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,WEST/).to_stdout
    end
  end

  context 'heading west' do

    it 'updates the robots position to heading south' do
      input_file = 'spec/aat/data/left_from_west.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,SOUTH/).to_stdout
    end
  end

  context 'heading south' do

    it 'updates the robots position to heading east' do
      input_file = 'spec/aat/data/left_from_south.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,EAST/).to_stdout
    end
  end

  context 'heading east' do

    it 'updates the robots position to heading north' do
      input_file = 'spec/aat/data/left_from_east.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,NORTH/).to_stdout
    end
  end
end
