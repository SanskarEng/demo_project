class CatagorysController < ApplicationController

  before_action :find_user, except: [:show, :index, :new, :create]

  def index
    @users = ProductCatagory.all
  end

  def show
    @user = ProductCatagory.find(params[:id])
    @shows = @user.products
  end

  def new
    @user = ProductCatagory.new
  end

  def edit
  end

  def create
    @user = ProductCatagory.new(params_pro)
    if @user.save
      flash[:success] = "Category successfully created"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @user.update_attributes(params_pro)
      flash[:success] = "Category was successfully updated"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = "Category was successfully deleted"
      redirect_to @users_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @users_path
    end
  end

  private
    def params_pro 
      params.require(:product_catagory).permit(:catagory_name)
    end

    def find_user
      @user = ProductCatagory.find(params[:id])
    end

end
