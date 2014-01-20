# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    questions "MyString"
    answer "MyText"
  end
end
