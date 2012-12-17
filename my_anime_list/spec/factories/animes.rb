# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anime do
    user "MyString"
    title "MyString"
    episodes 1
    description "MyText"
  end
end
