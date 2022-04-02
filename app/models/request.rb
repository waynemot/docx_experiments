class Request < ApplicationRecord
  has_one :letter
  has_one :employment_type
end
