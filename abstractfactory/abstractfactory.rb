#!/user/bin/ruby
# -*- coding: UTF-8 -*-

class Computer
  def doUse
    puts "Computer"
  end
end

class NotebookComputer < Computer
  def doUse
    puts "这是笔记本电脑的功能"
  end
end

class PersonnaoComputer < Computer
  def doUse
    puts "这是私人电脑"
  end
end


class Telephone
  def doUse
    puts "Telephone"
  end
end

class DesktopPhone < Telephone
  def doUse
    puts "DesltopPhone"
  end
end

class Mobile < Telephone
  def doUse
    puts "Mobile"
  end
end


class Company

  def buildComputer(value)
    puts "Company- buildComputer"
  end

  def buildTelephone(value)
    puts "Company- buildTelephone"
  end
end

class CompanyA < Company
  def initialize()
    @product = nil
  end

  def buildComputer(value)
    if value == "个人电脑"
      @product = PersonnaoComputer.new
    elsif value == "笔记本电脑"
      @product = NotebookComputer.new
    else
      @product = nil
    end
    @product
  end

  def  bulidTelephone(value)
    if value == "座机电话"
      @product = DesktopPhone.new
    elsif value == "手机"
      @product = Mobile.new
    else
      @product = nil
    end
    @product
  end

end

# ————————main主程序应用————————

#创建工厂
company = CompanyA.new

#根据传入的参数得到ProductA产品
computer1 = company.bulidComputer("个人电脑")
computer1.doUse()

computer2 = company.bulidComputer("笔记本电脑")
computer2.doUse()

telephone1 = company.bulidTelephone("座机电话")
telephone1.doUse()

telephone2 =  company.bulidTelephone("手机")
telephone2.doUse()

BEGIN {
  puts "———这是abstractfactory的输出开始———"
}

END {
  puts "———这是abstractfactory的输出结束———"
}


