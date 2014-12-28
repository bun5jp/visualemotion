class RequestController < ApplicationController

  def index
    # 入力画面を表示
    @request = Request.new
    render :action => 'index'
  end
 
  def confirm
    # 入力値のチェック
    @request = Request.new(params[:request])
    if @request.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end
 
  def thanks
    # メール送信
    @request = Request.new(params[:request])
    RequestMailer.received_email(@request).deliver
    RequestMailer.post_email(@request).deliver

 # (@inquiry)
 
    # 完了画面を表示
    render :action => 'thanks'
  end

end
