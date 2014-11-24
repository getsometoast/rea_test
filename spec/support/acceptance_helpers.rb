module AcceptanceHelpers
  def system_produces_expected_output(**args)
    expect { REATest::Application.new(args[:input_file]).run }.to output(args[:output]).to_stdout
  end
end
