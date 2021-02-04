Rails.application.routes.draw do
  get 'memos/index'
  get 'memos', to: 'memos#index'
end
