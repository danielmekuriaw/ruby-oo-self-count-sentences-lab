require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    final = []
    self.split('!').each{ |array1|
      array1.split('.').each{ |array2|
        array2.split('?').each{ |array3|
          final << array3
        }
      }
    }
    final.length
  end

end