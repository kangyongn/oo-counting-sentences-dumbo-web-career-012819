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
    i = 0
    self.split.each do |word|
      if word.sentence?
        i += 1
      elsif word.question?
        i += 1
      elsif word.exclamation?
        i += 1
      end
    end
    i
  end
end
