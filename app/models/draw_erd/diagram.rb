module DrawErd
  class Diagram
    class << self
      def schemas
        schemas = ActiveRecord::Base.connection.tables
        schemas.delete('schema_migrations')
        schemas.map! {|schema| schema.singularize.camelize}
        schemas.sort
      end
    end
  end
end
