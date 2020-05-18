require 'pry'

class AgenciesController < ApplicationController
  def index
    @agencies = Agency.all
  end

  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.create(params.require(:agency).permit(:name, :billing_terms, :credit_rating))
    if @agency.valid?
      redirect_to agencies_path
    else
      render :new
  end

  def edit
    @agency = Agency.find(params[:id])
  end

  def update
    @agency = Agency.find(params[:id])
    if @agency.update_attributes(params.require(:agency).permit(:name, :billing_terms, :credit_rating))
      flash[:success] = "Agency Updated"
      redirect_to agencies_path
    else
      render action: :edit
  end

  def show
    @agency = Agency.find(params[:id])
  end

  def destroy
    @agency = Agency.find(params[:id])
    @agency.destroy
    redirect_to agency_path
  end
end
end
end
