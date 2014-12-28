class ContactsController < ApplicationController

  def index
    @contact = Contact.new
    render :action => 'index'
  end
 
  def confirm
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      render :action => 'confirm'
    else   
      render :action => 'index'
    end
  end
 
  def thanks
    @contact = Contact.new(params[:contact])
    ContactMailer.received_email(@contact).deliver
    render :action => 'thanks'

    # @inquiry = Inquiry.new(params[:inquiry])
    # InquiryMailer.received_email(@inquiry).deliver
 

  end
end

# def create
#  @user = User.new(users_params) #後のプライベートメソッドで定義
#  @user.admin = 1
