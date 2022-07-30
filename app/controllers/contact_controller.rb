class ContactController < ApplicationController
  http_basic_authenticate_with :name => "name", :password => "password", only: :list
  def index
    Enquiry.create(name: params[:name], email: params[:email], message: params[:message])
  end

  def list
    @enquiries = Enquiry.all
  end
end
