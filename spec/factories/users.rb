FactoryGirl.define do
  factory :user do |n|
    email {|n| "person#{n}@example.com" }
    password 'secret123'
    password_confirmation 'secret123'
    confirmed_at Date.today
    role 0
    # slug {|n| "person#{n}" }
    factory :admin do
      role 1
    end
  end
end
