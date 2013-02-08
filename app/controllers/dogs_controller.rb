class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(params[:dog])
    if @dog.save
      redirect_to @dog, :notice => "Successfully created dog."
    else
      render :action => 'new'
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update_attributes(params[:dog])
      redirect_to @dog, :notice  => "Successfully updated dog."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_url, :notice => "Successfully destroyed dog."
  end
end
