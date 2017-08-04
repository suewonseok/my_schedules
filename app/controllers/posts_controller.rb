class PostsController < ApplicationController
  before_action :authen, only: [:index]
  def index
  end

  def new
  end

  def create
      email = User.find_by(email:params[:email])
      password = params[:password]
      if (!email) && (password.length >= 6)
        User.create(name:params[:name], email:params[:email],
                    password:params[:password],
                    password_confirmation:params[:password_confirmation])
        flash[:alert] = "회원가입에 성공하셨습니다."
        redirect_to '/'
      else
        flash[:alert] = "이메일/비밀번호 입력을 다시 해주세요."
        redirect_to new_post_path
      end
  end
end
