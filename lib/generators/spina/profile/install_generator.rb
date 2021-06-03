module Spina
  module Profile
    class InstallGenerator < Rails::Generators::Base

      def copy_migrations
        return if Rails.env.production?
        rake 'spina_profile:install:migrations'
      end

      def run_migrations
        rake 'db:migrate'
      end

      def feedback
        puts '    Your Spina Profile has been succesfully installed! '
      end

    end
  end
end