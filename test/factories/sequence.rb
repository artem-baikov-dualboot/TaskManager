FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :name, :description] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "test_user_#{n}@mail.com"
  end

  sequence :avatar do |n|
    "http://example.com/uploads/#{n}.png"
  end

  sequence :expired_at do |_n|
    DateTime.now.utc.to_date
  end
end
