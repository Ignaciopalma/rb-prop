class UsersController < ApplicationController
  def index

    @users = User.all

  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end


  def create
    @user = User.create(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :nombre, :apellido, :telefono, :encrypted_password, :sign_in_count, :current_sign_in_ip, :password_confirmation, )
    end
end
