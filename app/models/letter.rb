class Letter < ApplicationRecord
  belongs_to :request
  belongs_to :doc_template
end
