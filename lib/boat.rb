class Boat  
  def initialize
    boat = Motors.new
  end

  def start
    @motor_1_running = true
    @motor_2_running = true
  end

  def running?
    @motor_1_running && @motor_2_running
  end
end

class Motors
  attr_reader :motor_1_running, :motor_2_running

  def initialize
    @motor_1_running = false
    @motor_2_running = false
  end

end
