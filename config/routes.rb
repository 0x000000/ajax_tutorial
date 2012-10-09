AjaxTutor::Application.routes.draw do
  get "manual_ajax/link"

  get "rails_magic/link"
  get "rails_magic/form"

  post 'rails_magic/delete_smth'
  post 'rails_magic/create_smth'
  get 'rails_magic/play_with_request'

  get 'manual_ajax/content_for_link'
  get 'manual_ajax/some_special_content_for_link'

  root :to => 'home#index'
end
