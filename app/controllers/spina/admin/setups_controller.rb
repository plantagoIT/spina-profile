module Spina
  module Admin
      class SetupsController < AdminController
        before_action :set_index_breadcrumb
        before_action :get_setup

        # set the navigation to the settings part
        admin_section :settings

        def edit
          @setup_fields = current_theme.setup_fields
        end

        def update
          if @setup.update(setup_params)
            redirect_to spina.edit_admin_setup_path(@setup), flash: {success: t('spina.layout.saved')}
          else
            flash.now[:error] = t('spina.layout.couldnt_be_saved')
            render partial: 'error', status: :unprocessable_entity
          end
        end

        private

          def set_index_breadcrumb
            add_breadcrumb t('spina.setup.title')
          end

          def get_setup
            @setup = Spina::Setup.instance
          end

          def setup_params
            params.require(:setup).permit!
          end
      end
  end
end
