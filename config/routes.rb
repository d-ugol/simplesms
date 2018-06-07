Rails.application.routes.draw do
  get 'welcome/index'

  # DU. Make this the home page.
  root 'welcome#index'

  # DU. When the user clicks the Submit Form button, execute the sms method on the Welcome controller.
  post 'sms/send', to: 'welcome#sms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
