require_relative '../support/spec_helper'

describe 'parsing commands' do

  context 'when left command is badly formed' do

    it 'should ignore the command' do
      input_file = 'spec/aat/data/bad_data/left_command.txt'
      expect { REATest::Application.new(input_file).run }.to output(/Badly formed command in input file/).to_stdout
    end
  end
end
