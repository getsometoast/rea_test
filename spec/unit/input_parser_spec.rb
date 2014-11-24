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

    it 'fails on badly formed command - lowercase' do
      it_fails_on_badly_formed_command_text('left')
    end

    it 'fails on badly formed command - extra characters' do
      it_fails_on_badly_formed_command_text('report s')
    end

    it 'fails on badly formed command - place position' do
      it_fails_on_badly_formed_command_text('PLACE 1,2,NORTH,')
    end
  end
end
