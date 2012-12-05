class AuthUsersController < ApplicationController
  respond_to :html, :json, :xml

  def new
    @auth_user = AuthUser.new
  end

  def create
    @auth_user = AuthUser.new(params[:auth_user])
    if @auth_user.save
      redirect_to root_path, :notice => "Signed Up!"
    else
      render "new"
    end
  end
   
  def index
    @users = AuthUser.all
    respond_with @users
  end

  def show
    @user = AuthUser.find(params[:id])
    respond_with @user
  end

  def edit
    @user = AuthUser.find(params[:id])
  end

  def update
    @user = AuthUser.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  
end
