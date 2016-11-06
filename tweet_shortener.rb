# Write your code here.
def dictionary(word)
  word_list = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too =>"2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  word_list.each do |keyz, valz|
    if word.downcase == keyz.to_s
      word = valz
    end
  end
  word
end

def word_substituter(tweet)
  short_tweet = []
  tweet.split.each {|word| short_tweet << dictionary(word)}
  short_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    short_tweet = "#{short_tweet[0..136]}..."
  end
  short_tweet
end
