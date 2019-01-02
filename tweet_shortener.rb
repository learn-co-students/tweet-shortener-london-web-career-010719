require 'pry'
# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "Hello" => 'Hi',
    "to" => '2',
    "To" => '2',
    "two" => '2',
    "Two" => '2',
    "too" => '2',
    "Too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "Four" => '4',
    'be' => 'b',
    'Be' => 'B',
    'you' => 'u',
    'You' => 'U',
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end

def word_substituter(tweet)
  tweet.gsub(/\w+/) { |m| dictionary.fetch(m,m)}
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  first_cut = word_substituter(tweet)
  if first_cut.length > 140
    first_cut[139] = '...'
  end
  first_cut[0..139]
end
