class Phone

  def initialize(num)
    @num = clean(num)
  end

  def number
    @num
  end

  def clean(num)
    num.gsub(/[\(\)\s-\.]/, '')
  end

  def truncate(num)
    puts num.length
    if num.length == 11
      # if num[0] == '1'
        return num[1..-1]
      # else
          # return '0000000000'
    #   end
    end
  end
end