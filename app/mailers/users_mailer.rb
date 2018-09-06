class UsersMailer < ActionMailer::Base

  def send_book_details(book_id, user_id)
    @book = Book.find(book_id)
    @user = User.find(user_id)
    mail(:to => @user.email, subject: 'Welcome!')
  end
end
