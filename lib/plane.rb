require './lib/engine'

class Plane
  attr_reader :engines, :body_weight

  def initialize
    @engines = Array.new(2) { Engine.new }
    @body_weight = 1000
  end

  def weight
    engine_weight = engines.inject(0) do |sum, engine|
      sum + engine.core_weight + engine.propeller_weight
    end
    engine_weight + body_weight
  end

  def start
    engines.each do |engine|
      engine.start
    end
  end

end
