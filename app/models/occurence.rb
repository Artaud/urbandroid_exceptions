class Occurence < ActiveRecord::Base
  belongs_to :assertion
  belongs_to :excp
end
