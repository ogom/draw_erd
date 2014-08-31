require 'rails_erd/diagram/graphviz'

module DrawErd
  class Diagram
    class << self
      def schemas
        schemas = ActiveRecord::Base.connection.tables
        schemas.delete('schema_migrations')
        schemas.map! {|schema| schema.singularize.camelize}
        schemas.sort
      end

      def reset_migrations
        paths = ActiveRecord::Migrator.migrations_paths
        paths.each do |path|
          Dir.foreach(path) do |file|
            if match_data = /^(\d{3,})_(.+)\.rb$/.match(file)
              version = match_data[1].to_i
              ActiveRecord::Migrator.run(:down, paths, version)
              ActiveRecord::Migrator.run(:up, paths, version)
            end
          end
        end
      end
    end

    def initialize(path)
      @path = File.expand_path(path, Rails.root)
      FileUtils.mkdir_p(@path)
    end

    def create(title, domains=[], attributes=[:foreign_keys, :content])
      only = domains.map {|domain| domain.to_sym}
      options = {
        filetype: :png,
        attributes: attributes,
        title: title.to_s,
        only: only,
        filename: File.join(@path, title.to_s)
      }

      Rails.application.eager_load!
      RailsERD::Diagram::Graphviz.create(options)
    rescue => e
      Rails.logger.error(e)
    end
  end
end
