require 'terminal-notifier'

module Notifier
  module OsxNotification
    extend self

    def supported?
      return false unless Notifier.os?(/darwin/)

      match = `sw_vers`.match(/ProductVersion:\t(?<maj>\d+)\.(?<min>\d+)/)
      return false unless match

      major, minor = match[:maj].to_i, match[:min].to_i
      major > 10 || (major == 10 && minor > 7)
    end

    def notify(options)
      TerminalNotifier.notify(options[:message],
        :title    => options[:title],
        :subtitle => 'Test Notifier',
        :activate => 'com.apple.Terminal',
        :group    => Process.pid
      )
    end
  end
end
