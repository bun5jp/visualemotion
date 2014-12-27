class ContactController < ApplicationController

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

  # def thanks
  #   @contact = Contact.new(params[:contact])
  #   ContactMailer.post_email(@contact).deliver
  #   render :action => 'thanks'
  # end

  # def thanks
  #   @contact = Contact.new(params[:contact])
  #   # if @contact.save
  #     ContactMailer.sent(contact).deliver
  #     render :action => 'thanks'
    
  # end

  # def post_email
  #   @contact = Contact.new(params[:contact])
  #   @mail = ContactMailer.post_email(contact).deliver
  #   render :action => 'thanks'
 

end





