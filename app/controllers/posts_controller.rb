#アクション＝コントローラで定義されるメソッド（どの動作をするかで分かれる！）
class PostsController < ApplicationController
#↓これはindexアクションを定義している。
  def index
    #コントローラで定義したインスタンス変数は、対応するビューで使用することができる！
    #下記はインスタンス変数に全てのレコードを代入した。
    @posts = Post.all  #@postsを複数形にするのは、取得するレコードがallで複数になるため分かりやすいように！
  end

  def new   #今回は投稿するためのフォームだけ必要。そのためモデルを使ってデータを用意する必要はない！
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end


#index	一覧表示ページを表示するリクエストに対応して動く
#new	新規投稿ページを表示するリクエストに対応して動く
#create	データの投稿を行うリクエストに対応して動く
