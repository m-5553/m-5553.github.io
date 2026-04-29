# _plugins/ruby_4_fix.rb
# Ruby 3.2+ removed taint tracking. 
# This shim restores the methods so older Liquid versions don't crash.

if RUBY_VERSION >= '3.2'
  class Object
    def tainted?
      false
    end
    def taint
      self
    end
    def untaint
      self
    end
  end
end