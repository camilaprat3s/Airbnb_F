class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show, :edit, :update, :destroy, :confirm]
  # before_action :authorize_accessory, only: [:edit, :update, :destroy]

  def index
    @accessories = Accessory.all
  end

  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new(accessory_params)
\

    if @accessory.save
      flash[:notice] = "Accessory was successfully created."
      redirect_to @accessory
    else
      flash[:alert] = "Accessory could not be created. " + @accessory.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
  end

  def edit
  end

  # app/controllers/accessories_controller.rb
  def update
    if @accessory.update(accessory_params)
      flash[:notice] = "Yay! 🎉 you successfully borrowed this item."
      redirect_to root_path
    else
      flash[:alert] = "Accessory could not be updated. " + @accessory.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @accessory.destroy
    flash[:notice] = "Accessory was successfully deleted."
    redirect_to accessories_path
  end

  private

  def accessory_params
    params.require(:accessory).permit(:name, :description, :price_per_day, :category)
  end

  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def authorize_accessory
    unless @accessory.user == current_user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to @accessory
    end
  end

  def confirm
  end
end
