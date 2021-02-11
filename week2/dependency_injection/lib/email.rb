class EmailClient
  def initialize(message_class = Message)
    @message_class = message_class
  end
  def message
    @message_class.new
  end
end

class Message
  def send(to, body)
    "Sending an email to #{to}, containing #{body}"
  end
end

class SayHello
  def initialize(email_client_class = EmailClient)
    @email_client_class = email_client_class
  end
  def run
    email = @email_client_class.new
    email.message.send("friend@example.com", "HELLO!")
  end
end
