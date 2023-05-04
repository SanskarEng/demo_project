class ProductsController < ApplicationController
  before_action :find_user, except: [:index, :new, :create]

  def index
    @users = Product.all
  end

  def show
  end

  def new
    @user = Product.new
  end

  def edit
  end

  def create
    @user = Product.new(params_product)
    if @user.save
      flash[:success] = "Product successfully created"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @user.update_attributes(params_product)
      flash[:success] = "Product was successfully updated"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = "Product was successfully deleted"
      redirect_to @users_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @users_path
    end
  end

  private
  def params_product 
    params.require(:product).permit(:product_name, :product_price, :product_catagory_id)
  end


    def find_user
      @user = Product.find(params[:id])
    end

end
