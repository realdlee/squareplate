class Business < ActiveRecord::Base
  attr_accessible :address, :ein, :name, :phone, :url
  has_many :certifications
end
