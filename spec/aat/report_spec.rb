require_relative '../support/spec_helper'

describe 'reporting a robots position' do

  context 'after the robot has been placed' do

    it 'reports the robots current position' do
      system_produces_expected_output input_file: 'spec/aat/data/report/report_placed.txt', output: /0,0,NORTH/
    end
  end

  context 'before the robot has been placed' do

    it 'ignores the command' do
      system_produces_expected_output input_file: 'spec/aat/data/report/report_not_placed.txt', output: ''
    end
  end
end
