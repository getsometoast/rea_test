require 'rspec'

describe 'rotating the robot left' do

  context 'heading north' do

    it 'updates the robots position to heading west' do
      input_file = 'spec/aat/data/left_from_north.txt'
      expect { REATest::Application.new(input_file).run }.to output(/0,0,WEST/).to_stdout
    end
  end
end