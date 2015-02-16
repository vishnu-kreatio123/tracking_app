Blorgh::Engine.routes.draw do
  root :to => "articles#index"
  match '/new', :to => "articles#new"
  match '/articles', :to => "articles#index"
  match '/tracking_code', :to => "articles#tracking_code"
end
