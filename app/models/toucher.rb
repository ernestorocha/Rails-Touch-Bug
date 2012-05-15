class Toucher < ActiveRecord::Base
  belongs_to :touched, :touch => true

end
