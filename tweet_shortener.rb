# Write your code here.
def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "be" => "b"
  }
end



def word_substituter(string)
  string.split(" ").collect do |x|
    if dictionary.keys.include?(x.downcase)
       dictionary[x.downcase]
    else
       x
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
     tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    word_substituter(tweet)
  end
end
