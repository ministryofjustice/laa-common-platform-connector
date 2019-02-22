Rails.application.routes.draw do
  get '/refreshdata' => 'refresh_data#call_common_platform'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get 'hearing/:id' => 'hearings#get'
end
