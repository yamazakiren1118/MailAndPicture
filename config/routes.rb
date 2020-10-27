Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at:"/letter_opener_web" if Rails.env.development?
  root 'pages#index'
  get 'mails/new'
  get 'topics/new'
  get 'topics/index'
  post '/topics', to: 'topics#create'
  post '/user', to: 'mails#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
