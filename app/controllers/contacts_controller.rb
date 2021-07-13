class ContactsController < ApplicationController

  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_to do |format|
        format.html { redirect_to messages_path notice: 'message was successfully deleted.' }
        format.json { head :no_content }
    end
end

  private
  def contact_params
    params.permit(:name, :email, :content)
  end
end
