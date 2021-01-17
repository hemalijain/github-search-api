Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#search'
  get 'search', to: 'home#github_search'
  get 'search_item', to: 'home#github_search_item'
end
