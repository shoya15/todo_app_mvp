Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  root "posts#index"
  post "/posts/:id/done" => "posts#done", as: "done"
end
