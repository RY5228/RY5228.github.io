# Compatibility shim for Liquid 4 under Ruby 4+, where Object#tainted? was removed.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
