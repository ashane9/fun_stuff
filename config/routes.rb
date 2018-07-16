Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/menu' => 'mobile#menu'
  get '/rtc' => 'rtc#menu'
  # post '/menu' => 'rtc#qr_code'
  get '/rtc/:number' => 'rtc#card_details', as: :card
  get '/mobile/:number' => 'mobile#card_details', as: :mobile_card
  post '/menu' => 'mobile#menu', as: :post_mobile_card
  post '/rtc' => 'rtc#menu', as: :post_card
  patch '/rtc/:number' => 'rtc#update'
  patch '/mobile/:number' => 'mobile#update'
end
