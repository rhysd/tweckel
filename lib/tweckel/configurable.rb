module Tweckel
  module Configurable
    attr_accessor :file_name, :template

    def file_name
      @file_name || File.join(File.expand_path('~'), '.tweckel.rb')
    end

    def template
      @template || ''
    end

    def open_config
      File.open(file_name,"w"){|f| file.print template} unless File.exist? file_name
      system 'bash', '-c', "#{(ENV['EDITOR'] || 'vi')} \"$@\"", '--', file_name
    end

    def load
      
    end
  end
end
