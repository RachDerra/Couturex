FactoryBot.define do
  factory :user do
    email { 'derra@gmail.com' }
    password { '123456' }
    password_confirmation { '123456' }
    
  end
  factory :user_second, class: User do
    email { 'diran@gmail.com' }
    password { '1234567' }
    password_confirmation { '1234567' }
    
  end
  factory :user_third, class: User do
    email { 'dirani@gmail.com' }
    password { '12345678' }
    password_confirmation { '12345678' }
    
  end
end
