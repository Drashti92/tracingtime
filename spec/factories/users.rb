FactoryGirl.define do
  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email "test@test.com"
    password "password"
    password_confirmation "password"
  end
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email "admin@user.com"
    password "password"
    password_confirmation "password"
  end
end