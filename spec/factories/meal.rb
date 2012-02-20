FactoryGirl.define do
  factory :meal do |f|
    f.association :wine
    f.association :cheese
    f.association :bread
  end
end
