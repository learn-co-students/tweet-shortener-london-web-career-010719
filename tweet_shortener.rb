def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  
 array = string.split(" ")
  array.collect do |x|
    dictionary.collect do |key, value|
            if x.downcase == key
                x.replace(value)
        end
     end
  end
  array.join(" ").to_s
end

def bulk_tweet_shortener(string)
  string.each do |x|
    puts word_substituter(x)
  end
end
  
def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
  "#{string[0..136]}..."
  else
    string
  end
end

    






