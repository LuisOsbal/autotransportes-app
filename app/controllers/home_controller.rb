class HomeController < ApplicationController
  def index
  end

  def create
    ContactMailer.form_contact(contact_params).deliver
    redirect_to action: 'index'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
