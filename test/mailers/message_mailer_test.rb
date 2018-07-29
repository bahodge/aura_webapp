require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_me" do
    message = Message.new name: 'Ben',
                          email: 'benjamin.andrew.hodge@gmail.com',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Information Request', email.subject
    assert_equal ['batman.is.a.rainbow@gmail.com'], email.to
    assert_equal ['benjamin.andrew.hodge@gmail.com'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end

end
