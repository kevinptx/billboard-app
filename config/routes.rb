Rails.application.routes.draw do
  root "boards#index"

  #I've nested songs in both of the other routes:
  #If showing boards w song and need ID's then do it this way: Am I creating/updating a song through a board, then nest routes that way.
  #If only doing it through songs then OK with the below approach:

  resources :boards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end

  #only nesting routes with songs and artist and no longer nesting the board routes.
  #If only updating/deleting songs through artists then this is the way to go:

  # resources :boards
  # resources :artists do
  #   resources :songs
  #   end
  # end

end
