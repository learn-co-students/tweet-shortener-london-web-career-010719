require "pry"

def dictionary(input_words)
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  key_array = dictionary.keys
  return_words = []
  i = 0
  while i < input_words.length
    transformed = input_words[i].downcase
    if key_array.include?(transformed)
      yield (input_words[i])
        return_words.push(dictionary[transformed])
    else
      yield (input_words[i])
        return_words.push(input_words[i])
    end
    i = i + 1
  end
  return_words
end

def word_substituter(tweet)
  shortened_array = []
  tweet_array = tweet.split(" ")
  output = dictionary(tweet_array) do |words|
  # shortened_array.push(new_words)
  # output = shortened_array.join(" ")
end
  output.join(" ")
end

#word_substituter("hello welcome to the party too")


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    output = word_substituter(tweet)
    puts output
  end
end

def selective_tweet_shortener(tweet)
  output = ""
  if tweet.length > 140
    output = word_substituter(tweet)
  else
    output = tweet
  end
  output
end


def shortened_tweet_truncator(tweet)
  result = selective_tweet_shortener(tweet)
  if result.length > 140
    result = result.slice(0,137)
    result = result + "..."
    output = result
  else
    output = result
  end
end
