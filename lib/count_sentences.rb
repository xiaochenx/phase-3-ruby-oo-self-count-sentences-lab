require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    
    # self.split.select{|w|w.sentence? || w.question? || w.exclamation?}.size
    self.split(/\.|\?|\!/).select{|w|w != ""}.size
  end
end