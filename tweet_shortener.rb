# Write your code here.

def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
      }
end



def word_substituter(tweets)
  tweets.split.collect do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end



def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).length > 140
    word_substituter(tweets)[0..136] + "..."
  else
    tweets
  end
end