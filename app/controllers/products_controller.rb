class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = case params[:category]
            when 'Tees'
              Product.where(:category => "Tees")
            when 'Shirts'
              Product.where(:category => "Shirts")
            when 'Dresses'
              Product.where(:category => "Dresses")
            when 'Accessories'
              Product.where(:category => "Accessories")
            else
              Product.all
            end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "成功将#{@product.title}加入购物车"
    else
      flash[:warning] = "购物车内已有此商品"
    end
    redirect_to :back
  end
end
