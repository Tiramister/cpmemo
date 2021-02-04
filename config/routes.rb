Rails.application.routes.draw do
  get 'memos/index'
  get 'memos', to: 'memos#index'

  get 'memos/add'
  post 'memos/create'

  get 'memos/edit/:id', to: 'memos#edit'
  patch 'memos/update/:id', to: 'memos#update'

  get 'memos/delete/:id', to: 'memos#delete'

  get 'memos/:id', to: 'memos#show'
end
