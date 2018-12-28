def dictionary

dictionary = { "hello" => "hi",
                "to" => "2",
                "two" => "2",
                "too" => "2",
                "be" => "b",
                "you" => "u",
                "at" => "@",
                "and" => "&",
                "for" => "4",
                "four" => "4"
}

end


def word_substituter(string)
     tweet_array = string.split.collect do |word|
       if dictionary.keys.include?(word.downcase)
         word = "go fuck yourself"
       else
         word
       end
     end
       tweet_array.join(" ")

   end

def bulk_tweet_shortener(array)
  array.collect do |tweets|
    puts word_substituter(tweets)
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
    short_tweet = word_substituter(string)
    if short_tweet.length > 140
      short_tweet[0..136]+"..."
    else
      short_tweet
    end
  else
    string
  end

end
