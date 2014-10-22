class Cypher
  def initialize(message)
    @message = message
    remove_non_alphanumeric!
    capitalize
    split_by_fives
    add_x_s
    p @message
  end

  def remove_non_alphanumeric!
    @message.gsub!(/\W/, "")
  end

  def capitalize
    @message.upcase!
  end

  def split_by_fives
    @message.scan(/...../)
  end

  def add_x_s
    if @message.length % 5 != 0
      count = 5 - @message.length % 5
      @message.insert(-1, ('X' * count))
      @message = split_by_fives
    else
      @message = split_by_fives
    end
  end

end