class ContactMailer < ActionMailer::Base
  # default :from => "mayak.sub@gmail.com"   # 送信元アドレス
  # default :to => "mayak.sub@gmail.com"     # 送信先アドレス

  default from: "mayak.sub@gmail.com"   # 送信元アドレス
  default to: "mayak.sub@gmail.com"     # 送信先アドレス 
  # def received_email(contact)
  #   @contact = contact
  #   mail(:bcc => "visualemotion.contact@gmail.com", :subject => 'お問い合わせを承りました')
  # end

  # def mail_send
  #   @mail = NoticeMailer.sendmail_confirm.deliver
  #   render :text => 'send finish'
  # end

  def received_email(contact)
    @contact = contact
    # mail(:subject => 'お問い合わせを承りました')
    mail to: @contact.email, :subject => "お問い合わせを承りました"
    # mail(:to => @contact.email, :bcc => "mayak.sub@gmail.com", :subject => 'お問い合わせを承りました')
  end
  
  # def post_email
  #   @mail = ContactMailer.post_email(contact).deliver
  #   render :action => 'thanks'
  # end

end

#   def sendmail_confirm
#     @greeting = "Hi"

#     mail to: "user@sample.com", subject: "ActionMailer test"
#   end
# end
