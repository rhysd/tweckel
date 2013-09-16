module Tweckel
  module Configurable
    @file_name = File.join(File.expand_path('~'), '.tweckel.rb')
    @template = ''

    attr_accessor :file_name, :template

    def open_config
      File.open(@file_name,"w"){|f| file.print @template} unless File.exist? @file
      system 'bash', '-c', "#{(ENV['EDITOR'] || 'vi')} \"$@\"", '--', @file_name
    end
  end
end
