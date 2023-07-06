Rails.application.routes.draw do
  resources :flats
end

# flats GET       /flats(.:format)                       flats#index
# POST            /flats(.:format)                       flats#create
# new_flat GET    /flats/new(.:format)                   flats#new
# edit_flat GET   /flats/:id/edit(.:format)              flats#edit
# flat GET        /flats/:id(.:format)                   flats#show
# PATCH           /flats/:id(.:format)                   flats#update
# PUT             /flats/:id(.:format)                   flats#update
# DELETE          /flats/:id(.:format)                   flats#destroy
