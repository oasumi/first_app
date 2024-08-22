#まず最初に、ここではルーティングの設定を行う
Rails.application.routes.draw do
#↓HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'end
  get 'posts', to: 'posts#index'#←「postsというパスに、GETメソッドでリクエストが送られてきたとき、postsコントローラーのindexアクションを呼び出す」という設定
#↑ここで設定したルーティングを確認するにはターミナルでrails routesと入力
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
end
