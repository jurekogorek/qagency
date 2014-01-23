Qagency::Application.routes.draw do
  get "main/index"
  get "main/next"
  root :to => 'main#index'
end
