module DrawErd
  class DiagramController < ::DrawErd::ApplicationController
    def index
      @schemas = DrawErd::Diagram.schemas

      title = 'erd'
      path = 'draw-erd'
      @image_file = File.join(path, "#{title}.png")

      @domains = []
      @domains = params['schemas'].keys if params.key?('schemas')

      diagram = DrawErd::Diagram.new(File.join('public', 'images', path))
      diagram.create(title, @domains)
    end
  end
end
