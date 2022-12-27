class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products.as_json
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image],
    )
    render json: @product.as_json
  end

  def show
    @product = Product.find_by(id: params[:id])
    render json: @product.as_json
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      image: params[:image] || @product.image,
    )
    render json: @product.as_json
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product removed successfully" }
  end
end
