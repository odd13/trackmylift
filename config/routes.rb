Rails.application.routes.draw do
	root 'exercisegroups#index'
  resources :exercisegroups, :exerciselogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
