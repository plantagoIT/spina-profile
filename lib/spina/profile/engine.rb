module Spina
  module Profile
    class Engine < ::Rails::Engine
      isolate_namespace Spina::Profile

      config.before_initialize do
        ::Spina::Plugin.register do |plugin|
          plugin.name = 'profile'
          plugin.namespace = 'profile'
        end
      end

      config.generators do |g|
        g.assets false
        g.helper false
      end
    end
  end
end