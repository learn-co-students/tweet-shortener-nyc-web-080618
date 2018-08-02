 def dictionary
  hash = {"hello" =>"hi", "to" => 2, "two" => 2, "too" => 2, "for" => 4, "four" => 4, "be" =>"b", "you" => "u", "at" => "@", "and" => "&"}
  hash
  end
  
 def word_substituter(string)
   arr = []
   array_string = string.split(" ")
   array_keys = dictionary.keys
   array_string.each do |word|
    lowercase = word.downcase
    if array_keys.include?(lowercase)
    word = dictionary[lowercase]
    arr << word
    else 
     arr << word
    end
   end
 arr.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
 if tweet.length > 140
    shortened = word_substituter(tweet)[1..140]
    elsif tweet.length <= 140
    tweet
    end
end

def shortened_tweet_truncator (tweet)
    if tweet.length > 140
    shortened = word_substituter(tweet)[1..135] + "(...)"
   elsif tweet.length <= 140
    word_substituter(tweet)
    end
end