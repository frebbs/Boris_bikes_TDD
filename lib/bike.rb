class Bike
  attr_reader :needs_repair
  def initialize(broken = false)
    @needs_repair = broken
  end

  def working?
    !@needs_repair
  end

  def broken?(repair = false)
    repair ? true : false
  end
end