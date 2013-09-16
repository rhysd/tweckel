class File
  def self.which? cmd
    dir = ENV['PATH'].split(':').find {|p| File.executable? File.join(p, cmd)}
    File.join(dir, cmd) unless dir.nil?
  end
end
