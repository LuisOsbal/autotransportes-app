Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'
    resources :home, only: %i[index new create]
    resources :newsletters, only: %i[create]
  end
end
