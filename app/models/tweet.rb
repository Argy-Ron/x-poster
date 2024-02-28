class Tweet < ApplicationRecord

    #アソシエーション(多:1)
    belongs_to :user
end
