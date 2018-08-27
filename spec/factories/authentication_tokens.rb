FactoryBot.define do
  factory :authentication_token do
    body 'MyString'
    user nil
    last_used_at '2018-08-27 23:18:09'
    expires_in 1
    ip_address 'MyString'
    user_agent 'MyString'
  end
end
