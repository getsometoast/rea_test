require 'rspec'

describe Report do

  it 'should report the robots current position' do
    output = StringIO.new

    report = ReportCommand.new

    expect(output).to receive(:puts).with('0,0,NORTH')

    report.execute
  end
end