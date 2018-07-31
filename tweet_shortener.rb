# Write your code here.
require "pry"

def dictionary
  words = {
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

def word_substituter(string)
  string.split(' ').collect do |w|
    if dictionary.keys.include?(w.downcase)
      w = dictionary[w.downcase]
      w
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(arr)
#iterates over them, shortens them, and puts out the results to the screen.
  arr.map do |w|
    puts word_substituter(w)
  end
end

def selective_tweet_shortener(string)
  #that only does the substitutions if the tweet is longer than 140 characters.
  #If the tweet is 140 characters or shorter, just return the original tweet.
  if string.length > 140
    word_substituter(string)
  else
    string # if shorter return original tweet
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string[0..139]
  else
      string
    end
  end
