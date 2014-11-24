require_relative '../support/spec_helper'

describe 'moving the robot' do

  context 'when facing north' do

    it 'moves the robot forward north' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_north.txt', output: /0,1,NORTH/
    end

    it 'does not move off the table' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_north_off.txt', output: /0,4,NORTH/
    end
  end

  context 'when facing south' do

    it 'moves the robot forward south' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_south.txt', output: /0,0,SOUTH/
    end

    it 'does not move off the table' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_south_off.txt', output: /0,0,SOUTH/
    end
  end

  context 'when facing east' do

    it 'moves the robot forward east' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_east.txt', output: /1,0,EAST/
    end

    it 'does not move off the table' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_east_off.txt', output: /4,0,EAST/
    end
  end

  context 'when facing west' do

    it 'moves the robot forward west' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_west.txt', output: /0,0,WEST/
    end

    it 'does not move off the table' do
      system_produces_expected_output input_file: 'spec/aat/data/move/move_west_off.txt', output: /0,0,WEST/
    end
  end
end
