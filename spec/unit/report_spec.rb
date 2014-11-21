require 'rspec'

describe ReportCommand do

  it 'should report the robots current position' do
    output = double('$stdout')

    report = ReportCommand.new

    expect(output).to receive(:puts).with('0,0,NORTH')

    report.execute
  end
end
