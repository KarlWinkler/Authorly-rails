FactoryBot.define do
  factory :author do
    email { 'testing_email@testing.goingnowhere' }
    name { 'tester' }
    password { 'testing' }
  end
end
