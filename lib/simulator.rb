class Simulator
  def run(commands)
    commands.each { |command| command.execute }
  end
end
