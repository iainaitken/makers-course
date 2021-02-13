def send_email_to(user)
  address = user.email.strip
  Mail.new(address).send_message
end

# It understands what browser I am using and displays a message
def tell_browser_type(browser)
  message_1 = "You are using the Safari browser."
  message_2 = "You are using a non-Safari browser."

  browser.type == "Safari" ? message_1 : message_2
end


def send_correct_page(browser, window)
  if(browser.type == "Safari" && window.size < "768px")
    return "You are using the Safari browser in a small window."
  else
    return "You are not using the Safari browser or have a big window."
  end
end


class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    if fancy
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct, fancy person!" })
    else
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct" })
    end
  end
end
