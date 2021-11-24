class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:id])
      end
    
    def new
        @user=User.new
    end

def create
    @user=User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
     else
      redirect_to edit_user_path(@user)
      end
    end
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user= User.find(params[:id])
  
      if @user.update(user_params_second)
        redirect_to @user
      else
        render :edit
      end
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
  
      redirect_to root_path
    end
    private
    def user_params
      params.require(:user).permit(:name, :phone_no, :type)
    end

    def user_params_second
      params.require(:user).permit(:specialist_in, :qualifications, :certifications)
    end

end