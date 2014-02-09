WickedPdfExample::Application.routes.draw do
  root to: "home#index"
  get "/articles", to: "articles#index", as: :articles
end
