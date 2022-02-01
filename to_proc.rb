def a(&block)
  p block
end

a do

end



p ["a", "b", "c", "d"].map{ |obj| obj.upcase }
p ["a", "b", "c", "d"].map(&:upcase)

# what it looks like behind the scenes every Symbol has a to_proc
class Symbol
  def to_proc
    ->(obj, args=nil) { obj.send(self, *args) }
  end
end

class Formula
  def self.to_proc
    ->(obj) { obj * obj }
  end
end
p [1, 2, 3, 4].map(&Formula)
