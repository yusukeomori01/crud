class UsersController < ApplicationController
  #登録者一覧を表示するアクション
  def index
    @users = User.all
  end
  #新規投稿画面に対応するアクション
  def new
    @user = User.new
  end
  #新規登録を作成すアクション
  def create
    User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
