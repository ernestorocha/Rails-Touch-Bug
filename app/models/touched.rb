class Touched < ActiveRecord::Base
  has_one :toucher

  accepts_nested_attributes_for :toucher

  after_touch :set_attr




  private


  def set_attr
    if toucher
      update_attribute(:set_this, true)
    end
  end
end
