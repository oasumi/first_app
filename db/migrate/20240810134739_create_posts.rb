class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    #下記は「実際にpostsテーブルを作成する」という仕様がマイグレーションファイルに記載されている
    create_table :posts do |t|
      #下記を入力することでcontactカラムが追加される。textはカラムの型
      t.text :content
      t.timestamps
    end
  end
end

#カラムの型
#integer	数値	金額、回数など
#string	文字(短文)	ユーザー名、メールアドレスなど
#text	文字(長文)	投稿文、説明文など
#boolean	真か偽か	はい・いいえの選択、合格・不合格のフラグなど
#datetime	日付と時刻	作成日時、更新日時など