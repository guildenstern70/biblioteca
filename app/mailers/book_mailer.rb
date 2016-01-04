class BookMailer < ApplicationMailer

  layout 'contact'

  def contact(comment, user, book_id)

    @book = book_id
    @email = user.email
    @message = comment

    mail_subject = 'Biblioteca online: un parere su un libro'
    mail_from = 'no-reply@biblioteca.org'
    mail_to = 'support@biblioteca.org'

    mail(to: mail_to, from: mail_from, subject: mail_subject)

  end

end
