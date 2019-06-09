class NewslettersController < ApplicationController
  def create
    response = Newsletter.new(newsletter_params)
    redirect_to root_path if response.save
  end

  private

  def newsletter_params
    params.permit(:email)
  end
end
