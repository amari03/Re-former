class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
    def create
      @user = User.new(user_params)
  
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end

    def edit
    end

    def show
    end

    def new
      @user = User.new
    end
    

    def update
      if @user.update(user_params)
        redirect_to @user, notice: "User was successfully updated."
        else
          render 'edit'
        end
      end

  
    private

    def set_user
      @user = User.find(params[:id])
    end

      def user_params
        params.require(:user).permit(:username, :email, :password)
      end
  end
  