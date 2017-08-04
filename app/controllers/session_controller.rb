class SessionController < ApplicationController

  before_action :authen, only: [:destroy]

  def new
  end

  def create
    user = User.find_by(email:params[:email])
    if !!user && !!user.authenticate(params[:password])
      log_in(user)
      flash[:alert] = user.name+"님 안녕하세요."
      redirect_to '/'
    else
      flash[:alert] = "이메일/비밀번호 정보가 잘못 되었습니다."
      redirect_to new_session_path
    end
  end

  def destroy
    log_out
    flash[:alert] = "로그아웃에 성공하셨습니다."
    redirect_to '/'
  end
end
