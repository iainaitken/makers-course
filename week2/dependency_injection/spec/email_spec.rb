require 'email'

describe SayHello do
  let(:message_double) { double(:message, :send => "Sending an email to friend@example.com, containing HELLO!") }
  let(:email_client_double) { double(:email_client, :message => message_double) }
  let(:email_client_class_double) { double(:email_client_class, :new => email_client_double )}
  let(:say_hi) { SayHello.new(email_client_class_double) }

  it 'sends an email' do
    expect(say_hi.run).to eq "Sending an email to friend@example.com, containing HELLO!"
  end

end
