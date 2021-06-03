Spina::Engine.routes.draw do
  # Backend
  namespace :admin, path: Spina.config.backend_path do
    resources :setups, only: [:edit, :update]
  end
end
