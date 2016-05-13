class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category_id] == nil
       @products = Product.order(created_at: :asc)
    else
      @products = Product.where(category_id: params[:category_id])
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :url, :tagline, :category_id)
  end

  def find_product
    @product = Product.find(params[:id])
  end



end
