#          Copyright (c) 2009 Michael Fellinger m.fellinger@gmail.com
# All files in this distribution are subject to the terms of the Ruby license.

require 'innate/cache'

module Ramaze
  Cache = Innate::Cache

  class Cache
    autoload :MemCache, 'ramaze/cache/memcache'

    def self.clear_after_reload
      action.clear if respond_to?(:action)
      action_value.clear if respond_to?(:action_value)
    end
  end
end
