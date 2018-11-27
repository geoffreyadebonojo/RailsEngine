class Api::V1::InvoicesController < ApplicationController
  
  def index
    render json: Invoice.all
  end

  def show
    render json: Invoice.find(params[:id])
  end

  def create
    render json: Invoice.create(invoice_params)
  end

  def update
  end

  def destroy
  end

  private

  def invoice_params
    params.require(:invoice).permit(:status)
  end

end