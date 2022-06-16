class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end

  def show
    @detail = Detail.find(params[:id])
  end

  def new
    @detail = Detail.new
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    @detail = Detail.find(params[:id])
    if @detail.update(params.require(:detail).permit(:first_name, :last_name))
      flash[:notice] ="Name was saved successfully!"
      redirect_to @detail
    else
      render 'edit'
    end
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to details_path
  end

  def create
    @detail = Detail.new(params.require(:detail).permit(:first_name, :last_name))
    if @detail.save
      flash[:notice] ="Name was saved successfully!"
      redirect_to detail_path(@detail)
    else
      render 'new'
    end
  end
end

