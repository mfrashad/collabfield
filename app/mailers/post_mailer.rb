class PostMailer < ApplicationMailer
  def new_post(post)
    @post = post
    @user = User.find(@post.user_id)
    mail(to: @user.email, subject: "You created a new post")
  end
end
