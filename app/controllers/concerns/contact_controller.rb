class ContactController < ActionController::Base


def create
  @contact = Contact.new(params[:contact])
  if @contact.save
    ContactMailer.sent(@contact).deliver
    redirect_to :action => :index, :notice => 'お問い合わせありがとうございました。'
  else
    render :action => :index, :alert => 'お問い合わせ内容にエラーがあります。'
  end
end

end


