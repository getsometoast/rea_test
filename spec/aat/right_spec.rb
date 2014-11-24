require_relative '../support/spec_helper'

describe 'rotating the robot right' do

  context 'heading north' do

    it 'updates the robots position to heading east' do
      system_produces_expected_output input_file: 'spec/aat/data/right/right_from_north.txt', output: /0,0,EAST/
    end
  end

  context 'heading east' do

    it 'updates the robots position to heading south' do
      system_produces_expected_output input_file: 'spec/aat/data/right/right_from_east.txt', output: /0,0,SOUTH/
    end
  end

  context 'heading south' do

    it 'updates the robots position to heading west' do
      system_produces_expected_output input_file: 'spec/aat/data/right/right_from_south.txt', output: /0,0,WEST/
    end
  end

  context 'heading west' do

    it 'updates the robots position to heading north' do
      system_produces_expected_output input_file: 'spec/aat/data/right/right_from_west.txt', output: /0,0,NORTH/
    end
  end
end
