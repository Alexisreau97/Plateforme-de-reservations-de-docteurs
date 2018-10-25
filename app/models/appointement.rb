class Appointement < ApplicationRecord
  has_one :patinent
  has_one :doctor
end
