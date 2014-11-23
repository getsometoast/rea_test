require_relative '../support/spec_helper'

describe 'parsing commands' do

  context 'when left command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/left_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end

  context 'when right command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/right_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end

  context 'when move command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/move_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end

  context 'when place command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/place_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end

  context 'when report command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/report_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end

  context 'when place position is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/place_position.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end
end
