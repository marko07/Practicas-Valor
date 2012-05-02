class ValuePractice < ActiveRecord::Base
  belongs_to :user
  has_one :recognition
  has_many :internal_benchmarkings
end