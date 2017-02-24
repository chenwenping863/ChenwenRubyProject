#!/user/bin/ruby
# -*- coding: UTF-8 -*-

class Product
  def initialize(productType)
    @productType = ''
  end

=begin
  def getProductType
    @productType
  end
=end

  def doUse
    puts "product 实现的功能"
  end
end

class ProductA < Product
  def initialize()
    @productType = "ProductA"
    @productParameter = "A"
  end

  def getProductType
    @productType
  end

  def getParameter
    @productParameter
  end

  def doUse
    puts "这是ProductA实现的功能"
  end
end

class ProductB < Product
  def initialize()
    @productType = "ProductB"
    @productParameter = "B"
  end

  def getProductType
    @productType
  end

  def getProductParameter
    @productParameter
  end

  def doUse
    puts "这是PROFUCTB实现的功能"
  end
end

class Company
  def buildProduct(value)

  end
end

class CompanyA < Company
  def initialize()
    @product = nil
  end

  def buildProduct(value)
    if value = "A"
      @product = ProductA.new
    elsif value = "B"
      @product = ProductB.new
    else
      @product = nil
    end
  end

end

company = CompanyA.new

product = company.buildProduct("A")
product.doUse()

#根据传入的参数得到ProductB产品
product =  company.buildProduct("B")
product.doUse()

BEGIN {
  puts "start"
}

END {
  puts "stop"
}