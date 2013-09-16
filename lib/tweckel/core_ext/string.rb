class String
    def undent
        min_space_num = self.split("\n").delete_if{|s| s=~ /^\s*$/ }.map{|s| s[/^\s+/].length }.min
        gsub(/^[ \t]{,#{min_space_num}}/, '')
    end
end
