AjaxTutor::Application.routes.draw do
  get "rails_magic/link"
  get "rails_magic/form"

  post 'rails_magic/delete_smth'
  post 'rails_magic/create_smth'
  get 'rails_magic/play_with_request'

  root :to => 'home#index'
end
