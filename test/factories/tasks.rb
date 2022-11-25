FactoryBot.define do
  factory :task do
    name { 'MyString' }
    description { 'MyText' }
    author factory: :manager
    assignee_id { 1 }
    state { 'MyString' }
    expired_at { '2022-11-24' }
  end
end
