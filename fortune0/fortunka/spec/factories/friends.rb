# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friend do
    last_name "MyString"
    first_name "MyString"
    phone "MyString"
    motto "MyText"
  end
end
