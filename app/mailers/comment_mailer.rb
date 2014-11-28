class CommentMailer < ActionMailer::Base
  default from: "trapthedot@reeonce.biz"
  def comment_email(comment)
      @comment = comment
      mail(to: 'reeonce@yahoo.com', subject: 'Comment of Trap the Dot!')
  end
end
