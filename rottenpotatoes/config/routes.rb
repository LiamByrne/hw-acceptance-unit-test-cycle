Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :similar, :controller=> 'movies', :action => 'similar', :only => [:index]
  end
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
