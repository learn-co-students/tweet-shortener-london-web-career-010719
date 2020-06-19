# Write your code here.
def dictionary (lookup)
  replace = lookup
  dictionary = {
    "hello" => 'hi',
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"}
  dictionary.each do |key,value|
    replace = value if key == lookup || key.capitalize == lookup || key.upcase == lookup
  end
  replace
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ").collect{|word| word=dictionary(word)}.join(" ")
  new_tweet
end

def bulk_tweet_shortener(tweets)
  i=0
  new_tweets = []
  while i<tweets.size do
    new_tweets[i] = word_substituter(tweets[i])
    puts new_tweets[i]
    i += 1
  end
  new_tweets
end

def selective_tweet_shortener(tweet)
  new_tweet = tweet
  new_tweet = word_substituter(tweet) if tweet.size > 140
  new_tweet
end

def shortened_tweet_truncator(tweet)
  new_tweet = tweet
  new_tweet = tweet[0..139] if tweet.size>140
  new_tweet
end
