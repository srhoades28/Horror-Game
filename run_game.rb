require_relative "Map.rb"
require_relative "Runner.rb"
require_relative "Scenes.rb"

map = GameMap.new()
engine = GameEngine.new()
engine.run_scene(map)
