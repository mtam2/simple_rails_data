Rails.application.routes.draw do
    resources :event
    root 'event#home'
    match '*path' => redirect('/'), via: :get
end
