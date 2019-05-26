require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_us" do
    message = Message.new name: 'anna',
                          email: 'anna@example.org',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_us(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from RMIT RAD Assignment', email.subject
    assert_equal ['s3530160@student.rmit.edu.au'], email.to
    assert_equal ['anna@example.org'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end