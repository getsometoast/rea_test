require_relative '../support/spec_helper'

describe ReportCommand do

  it 'should report the robots current position' do
    robot = double('Robot')
    output = double('$stdout')

    robot.position = Position.new(0, 0, :NORTH)

    report = ReportCommand.new robot: robot,
                               output: output

    expect(robot).to receive(:position)
    expect(output).to receive(:puts).with('0,0,NORTH')

    report.execute
  end
end
