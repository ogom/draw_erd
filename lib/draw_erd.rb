require 'draw_erd/version'
require 'draw_erd/configure'
require 'draw_erd/default'
require 'draw_erd/engine'

module DrawErd
  class << self
    def configure
      yield DrawErd::Configure
    end

    def config
      DrawErd::Configure
    end
  end
end

DrawErd::Configure.setup
