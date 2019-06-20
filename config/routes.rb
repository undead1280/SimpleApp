Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get "users" => "users#show"
    get "search" => "search#search"
    get "posts" => "posts#index"
    resources :tags, only: [:show]
    devise_for :users
    resources :users do
      resources :microposts
      collection do
        delete "destroy_multiple"
      end
    end
    root "users#index", as: "home"
    resources :posts do
      resources :chapters
      resources :notes
    end
  end
end
