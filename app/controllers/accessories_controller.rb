class AccessoriesController < ApplicationController
  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new(accessory_params)
    if @accessory.save
      redirect_to @accessory
    else
      render 'new'
    end
  end

  def edit
    @accessory = Accessory.find(params[:id])
  end

  def update
    @accessory = Accessory.find(params[:id])
    if @accessory.update(accessory_params)
      redirect_to @accessory, notice: 'Accessory was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy
    redirect_to accessories_path, notice: 'Accessory was successfully destroyed.'
  end
  def show
    @accessory = Accessory.find(params[:id])
  end

  def index
    @accessories = Accessory.all
  end

  private
  def accessory_params
    params.require(:accessory).permit(:name, :description, :price).merge(user: current_user)
  end
end
