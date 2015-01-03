module DrawErd
  module Default
    PATH = 'draw-erd'.freeze
    TITLE = 'erd'.freeze
    ATTRIBUTES = [:foreign_keys, :content].freeze

    class << self
      def options
        Hash[DrawErd::Configure.keys.map{|key| [key, send(key)]}]
      end

      def path
        PATH
      end

      def title
        TITLE
      end

      def attributes
        ATTRIBUTES
      end
    end
  end
end
