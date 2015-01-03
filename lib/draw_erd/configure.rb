module DrawErd
  module Configure
    class << self
      attr_accessor :path, :title, :attributes

      def setup
        keys.each do |key|
          instance_variable_set(:"@#{key}", DrawErd::Default.send(key))
        end
      end

      def keys
        @keys ||= %i[path title attributes]
      end
    end
  end
end
