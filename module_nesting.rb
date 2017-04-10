module MD
  def self.call
    puts "hello"
  end
end

MD.call

module MD2
  class CL
    def self.call
      puts "hello"
    end
  end
end

MD2::CL.call

module MD3
  module MD4
    def self.call
      puts "hello"
    end
  end
end

MD3::MD4.call
