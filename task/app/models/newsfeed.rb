class Newsfeed < ApplicationRecord
    belongs_to :category
    validates_presence_of :title
end
