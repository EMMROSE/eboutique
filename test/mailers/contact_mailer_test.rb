require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "information" do
    mail = ContactMailer.information
    assert_equal "Information", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
