require_relative '../support/spec_helper'

describe 'placing the robot' do

  context 'on the table' do

    it 'should set the robots current position' do
      system_produces_expected_output input_file: 'spec/aat/data/place/place_on_table.txt', output: /0,0,NORTH/
    end
  end

  context 'off the table' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/place/place_off_table.txt', output: ''
    end
  end
end
