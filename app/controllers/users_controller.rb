class UsersController < ApplicationController


    def new
    @user = User.new 
     end
  
    def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = "Selamat Sudah Disimpan"
      redirect_to users_path
      return

    else
      flash[:error] = "Gagal Brooo"
    end

    render :new
    
    end 
    
    def edit
      
    end

    def destroy

      @user = User.find_by_id(params[:id])

      if @user.destroy
        flash[:notice] = "Selamat Sudah Didelete"
             
      else
        flash[:error] = "Gagal Delete Brooo"

      end

      redirect_to countries_path

    end
    
    def index
      @users = User.all
           
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :email, :username, :password, :dateofbirth, :last_name)
    end
    end