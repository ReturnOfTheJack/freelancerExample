Rails.application.routes.draw do
  root to: 'freelancers#index'
  get 'new', to: 'freelancers#new'
  post '/', to: 'freelancers#create'
end
