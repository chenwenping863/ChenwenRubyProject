#!/user/bin/ruby
# -*- coding: UTF-8 -*-


#!/creationalpatterns/singleton

class SaleMan

  def initialize(name,service)
    @name = name
    @service = service
  end

  def getName
    @name
  end

  def  setName(value)
    @name = value
  end

  def getService
    @service
  end

  def setService(value)
    @service = value
  end
end

class ServiceManager

  def initialize(value)
    @saleMan = value
  end

  def  ServiceManager(value)
    @saleMan = value
  end

  def  getSaleManService
    if @saleMan != nil
      @saleMan
    end
    @saleMan
  end
end

# ————————main主程序应用————————

saleMan = SaleMan.new("小刘", "小刘的服务")
service =   ServiceManager.new(saleMan)

puts"第一次获得服务："
saleman = service.getSaleManService()
puts saleman.getService()

puts "第二次获得服务："
saleman = service.getSaleManService()
puts saleman.getService()

puts "第三次获得服务："
saleman = service.getSaleManService()
puts saleman.getService()


BEGIN {
  puts "———这是singleton的输出开始———"
}

END {
  puts "———这是singleton的输出结束———"
}

