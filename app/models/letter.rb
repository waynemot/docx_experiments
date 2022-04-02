class Letter < ApplicationRecord
  belongs_to :request
  has_one :doc_template
end
