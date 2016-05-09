class ProductsController < ApplicationController

  PRODUCTS = [
    {name: "kudoz", category: "pro"},
    {name: "uSlide", category: "education"},
    {name: "RuBum", category: "lifestyle"},
    {name: "Roadstr", category: "lifestyle"}
  ]

  def index
    if params[:filter]
      @products = PRODUCTS.select {|product| product[:category] == params[:filter]}
    else
      @products = PRODUCTS
    end
  end

  def show
    @product = PRODUCTS[params[:id].to_i]
  end

end
