class Excp < ActiveRecord::Base
  belongs_to :user
  has_many :occurences
end
