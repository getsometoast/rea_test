require_relative '../support/spec_helper'

describe 'parsing commands', type: :aat do

  context 'when left command is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/left_command.txt',
                                      output: /Badly formed command in input file/
    end
  end

  context 'when right command is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/right_command.txt',
                                      output: /Badly formed command in input file/
    end
  end

  context 'when move command is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/move_command.txt',
                                      output: /Badly formed command in input file/
    end
  end

  context 'when place command is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/place_command.txt',
                                      output: /Badly formed command in input file/
    end
  end

  context 'when report command is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/report_command.txt',
                                      output: /Badly formed command in input file/
    end
  end

  context 'when place position is badly formed' do

    it 'should ignore the command' do
      system_produces_expected_output input_file: 'spec/aat/data/bad_data/place_position.txt',
                                      output: /Badly formed command in input file/
    end
  end
end
