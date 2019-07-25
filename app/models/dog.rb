class Dog < ApplicationRecord
     validates :name, presence: true
     validates :enjoys, length: { minimum: 10 }
end
