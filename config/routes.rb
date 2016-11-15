class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do

  resources :users
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do 
      post '/coffee_brewing', to: 'coffee#create'
      get '/coffee_brewing', to: 'coffee#show'
    end
  end
  
  root to: "coffee#index"
  
  constraints SubdomainConstraint do
    get '/list_of_brews', to: 'coffee#show'
    get '/how_to_brew', to: 'coffee#how'
  end

  get '/coffee_info', to: 'coffee#info'

end
