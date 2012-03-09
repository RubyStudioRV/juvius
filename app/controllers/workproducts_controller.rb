class WorkproductsController < ApplicationController
  before_filter :authenticate_user! , :only => [:new]

  def index
    @workproducts = Workproduct.all
  end

  def show
    @workproduct = Workproduct.find(params[:id])
  end

  def new
    @workproduct = Workproduct.new
  end

  def create
    @workproduct = Workproduct.new(params[:workproduct])
    if @workproduct.save
      redirect_to new_workproduct_path, :notice => "Successfully created workproduct."
    else
      render :action => 'new'
    end
  end

  def edit
    @workproduct = Workproduct.find(params[:id])
  end

  def update
    @workproduct = Workproduct.find(params[:id])
    if @workproduct.update_attributes(params[:workproduct])
      redirect_to @workproduct, :notice  => "Successfully updated workproduct."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @workproduct = Workproduct.find(params[:id])
    @workproduct.destroy
    redirect_to workproducts_url, :notice => "Successfully destroyed workproduct."
  end
end
