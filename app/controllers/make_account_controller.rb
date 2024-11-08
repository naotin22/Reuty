class MakeAccountController < ApplicationController
  
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if params[:user][:image].present?
      @user.image = params[:user][:image].original_filename

      File.open("./app/assets/images/profile/#{@user.image}", "w+b") do |file|
        file.write(params[:user][:image].read)
      end
    end

    if @user.save
      redirect_to login_path
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :mail, :address)
  end

end