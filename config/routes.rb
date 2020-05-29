Rails.application.routes.draw do
  get '/birds' => 'birds#index'
  get '/bids/:id' => 'birds#show'
end
