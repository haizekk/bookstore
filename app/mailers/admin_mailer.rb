class AdminMailer < ApplicationMailer
  default from: "no-reply@siteadmin.com"
  default to: "badoi.raluca@gmail.com"

  def mandrill_client
    # how we connect and talk with mandrill over the API
    @mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end

  def new_user(user)
    @user = user
    mail(subject: "New User: #{user.email}")
  end

=begin not harcoded
  def new_book(book, user)
    template_name = "new-book"
    template_content = []
    # message it is what defines the email itself
    message = {
        to: [{email: user.email, name: user.name}]
        subject: "New Book #{book.name}",
        # the array of variables that you can pass in and will be replaced by
        merge_vars: [
            {rcpt: "badoi.raluca@gmail.com",
             vars: [
                 {name: "BOOK_NAME", content: book.name}
             ]
            }
        ]
    }
    mandrill_client.messages.send_template template_name, template_content, message
  end
=end

  def new_book(book)
    template_name = "new-book"
    template_content = []
    message = {
        to: [{email: "badoi.raluca@gmail.com"}],
        subject: "New Book #{book.name}",
        merge_vars: [
            {rcpt: "badoi.raluca@gmail.com",
             vars: [
                 {name: "BOOK_NAME", content: book.name}
             ]
            }
        ]
    }
    mandrill_client.messages.send_template template_name, template_content, message
  end
end
