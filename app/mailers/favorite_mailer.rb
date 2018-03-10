class FavoriteMailer < ApplicationMailer
  default from: "gudetasd@gmail.com"

  def new_comment(user, post, comment)

     headers["Message-ID"] = "<comments/#{comment.id}@obscure-temple-50474.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@obscure-temple-50474.example>"
     headers["References"] = "<post/#{post.id}@obscure-temple-50474.example>"

     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")
   end

   def new_post(post)
     headers["Message-ID"] = "<comments/#{comment.id}@obscure-temple-50474.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@obscure-temple-50474.example>"
     headers["References"] = "<post/#{post.id}@obscure-temple-50474.example>"

     @post = post

     mail(to: post.user.email, subject: "You're following, #{post.title}")
   end
end
