FactoryGirl.define do
  factory :user do
    email 'john@example.com'
    password  'doe'
    password_confirmation  'doe'
  end
end