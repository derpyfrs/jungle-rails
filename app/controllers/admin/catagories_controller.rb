class Admin::ProductsController < ApplicationController

  def index
    @catagories = Catagory.order(id: :desc).all
  end

  def new
    @catagory = Catagory.new
  end

  def create
    @catagory = Catagory.new(catagory_params)

    if @product.save
      redirect_to [:admin, :catagories], notice: 'Catagory created!'
    else
      render :new
    end
  end


  private

  def catagory_params
    params.require(:catagory).permit(
      :name
    )
  end

end
