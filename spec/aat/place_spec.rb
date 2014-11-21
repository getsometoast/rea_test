require 'rspec'

describe 'placing the robot' do

  context 'on the table' do

    it 'should set the robots current position' do
      input_file = 'spec/aat/data/place_on_table.txt'
      expect { REATest::Application.new(input_file).run }.to output('0,0,NORTH\n').to_stdout
    end
  end
end