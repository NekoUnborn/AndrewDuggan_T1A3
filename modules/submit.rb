def submit(user, _contact, _support)
  require 'csv'
  require 'tty-prompt'
  require 'mail'
  require_relative '../methods/user_methods'
  require_relative './validate_input'

  prompt = TTY::Prompt.new

  quit = prompt.select("Are you sure you wish to submit?", %w[yes no])

  email = validate_input
  mail = Mail.new do
    from    'emailtesting42'
    to      'you@test.lindsaar.net'
    subject 'This is a test email'
    body    File.read('body.txt')
  end

  mail.to_s #=> "From: mikel@test.lindsaar.net\r\nTo: you@...

  @mail = Mail.new
  @mail.add_file("../saved_data/#{user}_answer.csv")
  @mail.parts.first.attachment? #=> true
  @mail.parts.first.content_transfer_encoding.to_s #=> 'base64'
  @mail.attachments.first.mime_type #=> 'image/jpg'
  @mail.attachments.first.filename #=> 'file.jpg'
  @mail.attachments.first.decoded == File.read("../saved_data/#{user}_answer.csv") #=> true
end
