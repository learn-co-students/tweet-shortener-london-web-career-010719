def dictionary 
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
  str_arr = str.split(" ")
  new_str_arr = []
  str_arr.collect do |word|
    if dictionary.keys.include?(word.downcase)
     new_str_arr << dictionary[word.downcase]
    else
     new_str_arr << word
    end
  end
  new_str_arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(str)
  if str.length <= 140
    str
  else 
    word_substituter(str)
  end
end
  
def shortened_tweet_truncator(str)
  if str.length >= 140 
    str[0...140]
  else
    str
  end
end

  
  
  
  
  
  