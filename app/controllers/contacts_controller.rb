class ContactsController < ApplicationController
  def new
  end

  def create
    #render plain: params[:contact].inspect - Это нужно для проверки, ну, думаю, что этои так понятно
  @contact = Contact.new(contact_params)

  if @contact.valid?
    @contact.save
  else
    render action: @contact
  end

  end

  private

  def contact_params
    params.require(:contact).permit(:title, :message)
  end
end
