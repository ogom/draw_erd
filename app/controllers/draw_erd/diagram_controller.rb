module DrawErd
  class DiagramController < ::DrawErd::ApplicationController
    def index
      @schemas = DrawErd::Diagram.schemas

      title = DrawErd.config.title
      path = DrawErd.config.path

      @image_file = File.join(path, "#{title}.png")

      @domains = []
      @domains = params['schemas'].keys if params.key?('schemas')

      diagram = DrawErd::Diagram.new(File.join('public', 'images', path))
      diagram.create(title, @domains, DrawErd.config.attributes)
    end
  end
end
