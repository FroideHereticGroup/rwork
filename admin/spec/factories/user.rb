FactoryGirl.define do
  pass = Faker::Internet.password(8)

  factory :user, class: AdminUser do
    id 1
    email Faker::Internet.email
    password pass
    encrypted_password pass
    password_confirmation pass
    reset_password_token ''
    reset_password_sent_at ''
    remember_created_at ''
    sign_in_count 1
    current_sign_in_at '2017-06-09 01:02:46'
    last_sign_in_at '2017-06-09 01:02:46'
    current_sign_in_ip '127.0.0.1'
    last_sign_in_ip '127.0.0.1'
    created_at '2017-06-09 01:02:46'
    updated_at '2017-06-09 01:02:46'
  end
end
