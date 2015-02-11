class String

  def find_replace(word_to_replace, new_word)
    self.gsub!(word_to_replace, new_word)
  end
end
