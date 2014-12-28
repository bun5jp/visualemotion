class ContactController < ApplicationController

  def index
    # 入力画面を表示
    @contact = Contact.new
    render :action => 'index'
  end
 
  def confirm
    # 入力値のチェック
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end
 
  def thanks
    # メール送信
    @contact = Contact.new(params[:contact])
    ContactMailer.received_email(@contact).deliver
    ContactMailer.post_email(@contact).deliver

 # (@inquiry)
 
    # 完了画面を表示
    render :action => 'thanks'
  end

end



# class ContactsController < ApplicationController

#   def index
#     @contact = Contact.new
#     render :action => 'index'
#   end
 
#   def confirm
#     @contact = Contact.new(params[:contact])
#     if @contact.valid?
#       render :action => 'confirm'
#     else   
#       render :action => 'index'
#     end
#   end
 
#   def thanks
#     @contact = Contact.new(params[:contact])
#     ContactMailer.received_email(@contact).deliver
#     render :action => 'thanks'

#     # @inquiry = Inquiry.new(params[:inquiry])
#     # InquiryMailer.received_email(@inquiry).deliver
 

#   end
# end

# # def create
# #  @user = User.new(users_params) #後のプライベートメソッドで定義
# #  @user.admin = 1
