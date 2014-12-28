class RequestMailer < ActionMailer::Base
  default from: "v.emotion.co@gmail.com"   # 送信元アドレス
  # default :to => ""     # 送信先アドレス

  def received_email(request)
    @request = request
    mail to: "v.emotion.co@gmail.com", :subject => "Webサイトよりリクエストがありました"
  end
 
  def post_email(request)
    @request = request
    mail to: @request.email, :subject => "【VE】リクエストいただきありがとうございます"
  end

end

