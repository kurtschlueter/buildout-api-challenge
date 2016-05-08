Rails.application.routes.draw do
  root 'properties#index'
  get 'properties/specific'
end
