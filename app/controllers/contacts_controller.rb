class ContactsController < ApplicationController
  def new
  end

  def create
    render plain: params[:contacts].inspect
  end
end
