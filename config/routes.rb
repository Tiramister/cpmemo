Rails.application.routes.draw do
  get 'memos/index'
  get 'memos', to: 'memos#index'

  get 'memos/add'
  post 'memos/create'
end
