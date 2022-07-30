class ContactController < ApplicationController
  def index
    Enquiry.create(name: params[:name], email: params[:email], message: params[:message])
  end

  def list
    @enquiries = Enquiry.all
  end
end
