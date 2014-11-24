require_relative '../support/spec_helper'

describe InputParser do

  describe '#parse' do

    it 'parses a place command heading north' do
      it_parses_a_place_command input: 'PLACE 0,0,NORTH', position: Position.new(0, 0, :NORTH)
    end

    it 'parses a place command heading south' do
      it_parses_a_place_command input: 'PLACE 0,1,SOUTH', position: Position.new(0, 1, :SOUTH)
    end

    it 'parses a place command heading west' do
      it_parses_a_place_command input: 'PLACE 1,0,WEST', position: Position.new(1, 0, :WEST)
    end

    it 'parses a place command heading east' do
      it_parses_a_place_command input: 'PLACE 4,0,EAST', position: Position.new(4, 0, :EAST)
    end

    it 'parses a report command' do
      it_parses_a_command type: :report, input: 'REPORT'
    end

    it 'parses a move command' do
      it_parses_a_command type: :move, input: 'MOVE'
    end

    it 'parses a left command' do
      it_parses_a_command type: :left, input: 'LEFT'
    end

    it 'parses a right command' do
      it_parses_a_command type: :right, input: 'RIGHT'
    end

    it 'parses a multiple command' do
      place_command = double('PlaceCommand')
      report_command = double('ReportCommand')
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:place) { place_command }
      expect(command_factory).to receive(:report) { report_command }

      result = parser.parse("PLACE 0,0,NORTH\nREPORT")

      expect(result).to be_a(Array)
      expect(result.count).to eq(2)
      expect(result.first).to eq(place_command)
      expect(result.last).to eq(report_command)
    end

    it 'fails on badly formed left command' do
      it_fails_on_badly_formed_command_text('left')
    end

    it 'fails on badly formed right command' do
      it_fails_on_badly_formed_command_text('right')
    end

    it 'fails on badly formed move command' do
      it_fails_on_badly_formed_command_text('move')
    end

    it 'fails on badly formed report command' do
      it_fails_on_badly_formed_command_text('report')
    end

    it 'fails on badly formed place position' do
      it_fails_on_badly_formed_command_text('PLACE 1,2,NORTH,')
    end
  end
end
