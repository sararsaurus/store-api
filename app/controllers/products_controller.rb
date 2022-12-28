class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image],
    )
    if @product.save
      render json: @product.as_json
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params["id"])

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
    @product = product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product removed successfully" }
  end
end
