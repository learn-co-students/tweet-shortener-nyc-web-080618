require 'pry'

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

def word_substituter(tweet)
  tweet_array = tweet.split
  replacements = dictionary
  i = 0
  while i < tweet_array.length
    w = 0
    while w < replacements.length
      if tweet_array[i].downcase == replacements.keys[w]
        tweet_array[i] = replacements.values[w]
      end
      w += 1
    end
    i += 1
  end
  tweet_array.join(" ")

end



def bulk_tweet_shortener(tweet_array)
  i = 0
  while i < tweet_array.length
    puts word_substituter(tweet_array[i])
    i += 1
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
  if word_substituter(tweet).length > 140
    tweet[1..140]
  else
    tweet
  end
end
