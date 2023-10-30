Rails.application.routes.draw do
	root "puzzles#index"
	
	resources :puzzles do
		resources :comments
		resources :constraints
	end
end

