class Show < ActiveRecord::Base
  has_many(:favoutites)
  has_many(:users, {through: :favourites})
end
