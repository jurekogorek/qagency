class Kod < ActiveRecord::Base
  attr_accessible :next
  
  
  def self.next
    Kod.transaction do 
      @kod = Kod.last.next
      Kod.last.update_column(:next, @kod+1)
    end
    @kod
  end
end
