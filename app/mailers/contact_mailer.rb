class ContactMailer < ActionMailer::Base
  default from: "v.emotion.co@gmail.com"   # 送信元アドレス
  # default :to => ""     # 送信先アドレス

  def received_email(contact)
    @contact = contact
    mail to: "v.emotion.co@gmail.com", :subject => "Webサイトよりお問い合わせがありました"
  end
 
  def post_email(contact)
    @contact = contact
    mail to: @contact.email, :subject => "【VE】お問い合わせいただきありがとうございます"
  end

end

