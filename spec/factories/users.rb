FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
 
  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email }
    password "password"
    password_confirmation "password"
    phone "4582693245"
  end
 
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password "password"
    password_confirmation "password"
     phone "4582693245"
  end
  
  factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password "password"
    password_confirmation "password"
    phone "4582693245"
  end
end