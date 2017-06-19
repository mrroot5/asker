# encoding: utf-8

# Define Question class
class Question
  attr_accessor :name, :comment, :text
  attr_accessor :good, :bads, :matching, :shorts
  attr_accessor :feedback
  attr_reader   :type

  def initialize(type = :choice)
    reset(type)
  end

  def reset(type = :choice)
    @name = ''
    @comment = ''
    @text = ''
    @type = type
    @good = ''
    @bads = []
    @matching = []
    @shorts = []
    @feedback = nil
    shuffle_on
  end

  def set_choice
    @type = :choice
  end

  def set_match
    @type = :match
  end

  def set_boolean
    @type = :boolean
  end

  def set_short
    @type = :short
  end

  def shuffle_off
    @shuffle = false
  end

  def shuffle_on
    @shuffle = true
  end

  def shuffle?
    @shuffle
  end
end
