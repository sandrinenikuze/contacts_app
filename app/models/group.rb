class Group < ApplicationRecord
  belongs_to :contact, optional:true
end
