class ContactMailer < ActionMailer::Base
  default from: "visualemotion.contact@gmail.com"   # 送信元アドレス
  default to: "visualemotion.contact@gmail.com"     # 送信先アドレス
 
  def received_email(contact)
    @contact = contact
    mail(:bcc => "visualemotion.contact@gmail.com", :subject => 'お問い合わせを承りました')
  end

  def mail_send
    @mail = NoticeMailer.sendmail_confirm.deliver
    render :text => 'send finish'
  end
  

end

#   def sendmail_confirm
#     @greeting = "Hi"

#     mail to: "user@sample.com", subject: "ActionMailer test"
#   end
# end
