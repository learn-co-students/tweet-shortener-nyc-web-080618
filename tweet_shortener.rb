# Write your code here.


def dictionary
  
dictionary = {
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

def word_substituter(tweet)

#convert to Array
tweet_array = tweet.split(" ")

#get dictionary
full_dictionary = dictionary()
dictionary_keys = dictionary.keys()

#empty new tweet
new_tweet_array = [ ]


  tweet_array.each do |word|
    
    if dictionary_keys.include?(word) == true
      word = full_dictionary[word]
      new_tweet_array.push(word)
    
    #deal with case issues
    elsif dictionary_keys.include?(word.downcase) == true
      word = full_dictionary[word.downcase]
      new_tweet_array.push(word)
    
    else
      new_tweet_array.push(word)
    end  
  
  end

#return new tweet and convert back to string
new_tweet_array.join(" ")

end

def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet| 
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
  
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  
  else
  word_substituter(tweet)
  
  end

end  

