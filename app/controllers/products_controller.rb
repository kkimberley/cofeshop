class ProductsController < ApplicationController

  layout 'product', :only => [:index, :show]

  def index
    @products = Product.all
    @page = "products"
  end

  def show
    @product = Product.find(params[:id])
  end

  def about
    @page = "about"
  end

  def add_to_cart
    @product = Product.find(params[:id])

    if !current_cart.items.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功將 #{@product.title} 加入購物車"
    else
      flash[:warning] = "你的購物車內已有此物品"
    end

    redirect_to :back
  end
end
