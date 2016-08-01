# encoding: utf-8

class Question
  attr_accessor :name, :comment, :text
  attr_accessor :good, :bads, :matching, :shorts
  attr_reader :type

  def initialize(type=:choice)
    init(type)
  end

  def init(type=:choice)
    @name=""
    @comment=""
    @text=""
    @type=type
    @good=""
    @bads=[]
    @matching=[]
    @shorts=[]
  end

  def set_choice
    @type=:choice
  end

  def set_match
    @type=:match
  end

  def set_boolean
    @type=:boolean
  end

  def set_short
    @type=:short
  end

  def reset
    init
  end

private

  def sanitize(psText="")
    lsText=psText.sub("\n", " ")
    lsText.sub!(":","\:")
    lsText.sub!("=","\\=")
    return lsText
  end

end
