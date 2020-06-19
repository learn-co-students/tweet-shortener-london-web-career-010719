require 'pry'
# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  tweet_array = tweet.split(" ")
  tweet_shortened_array  = []

  #for every word in the tweet
  tweet_array.each do |x|
    #find if it is contained in the dictionary keys
    shorter = dictionary.find do |key, value|
      #split the dictionary keys to check them all and make them lowercase to cover all permutations
      key_words = key.split(", ").collect {|word| word.downcase}
      key_words.include?(x.downcase)
    end
    #if it is use the short version otherwise use the original
    shorter != nil ? tweet_shortened_array << shorter[1] : tweet_shortened_array << x
  end
  tweet_shortened_array.join(" ")
end

def bulk_tweet_shortener (array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet_shorterned = selective_tweet_shortener(tweet)
  tweet_shorterned = tweet_shorterned[0...137] << "..." if tweet_shorterned.length > 140
  tweet_shorterned
end
