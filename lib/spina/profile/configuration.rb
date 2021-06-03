module Spina
  module Mount
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title       = 'Profile'
    self.controller  = 'profile'
    self.description = 'Create dynamically configurable fields for a profile'
    self.spina_icon  = 'pencil-outline'

    self.plugin_type = 'website_resource'
  end
end