class TtdController < ApplicationController
  def index
      @site_title = 'Trap the Dot !'
      @content = File.read(Rails.root + "app/views/ttd/index.markdown")
  end
  def tos
      @site_title = 'Trap the Dot !'
      @content = File.read(Rails.root + "app/views/ttd/tos.markdown")
  end
  def privacy_policy
      @site_title = 'Trap the Dot !'
      @content = File.read(Rails.root + "app/views/ttd/privacy_policy.markdown")
  end
  def comment_new
      @comment = Comment.new(params.require(:comment).permit(:email, :title, :text))
      CommentMailer.comment_email(@comment).deliver
      redirect_to  action: 'index'
  end
end
