# Write your code here.
require 'pry'
def dictionary
  {
   "hello" => 'hi',
   "to" => '2',
   "two" => '2',
   "too" => '2',
   "for" => '4',
   "four" => '4',
   "be" => 'b',
   "you" => 'u',
   "at" => "@",
   "and" => "&",
  }
end


def word_substituter(long_tweet)
  short_tweet = [ ]
  long_tweet_array = long_tweet.split(" ")
  long_tweet_array.each do |word|
    if dictionary.keys.include?(word)
        short_tweet << dictionary[word]
      else
        short_tweet << word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
#array_of_tweets = [[],[],[]]
#PROBLEM ... HOW TO INSERT INTO A NEW ARRAY

  array_of_tweets.each do |separated_array|
#separated each array
#now loop through each array
  separated_array = separated_array.split(" ")
  short_tweet = []
    separated_array.each do |word|
      if dictionary.keys.include?(word.downcase)
        short_tweet << dictionary[word.downcase]
      else
        short_tweet << word
      end
    end
    printed_tweet = short_tweet.join(" ")
    puts printed_tweet
  end
end

 # only does the substitutions if
 # the tweet is longer than 140 characters

def selective_tweet_shortener(tweet)
  tweet_length = tweet.split("").length
  if tweet_length < 140
      tweet
  elsif tweet_length > 140
      short_tweet = [ ]
      long_tweet_array = tweet.split(" ")
      long_tweet_array.each do |word|
        if dictionary.keys.include?(word)
            short_tweet << dictionary[word]
          else
            short_tweet << word
        end
      end
      short_tweet.join(" ")
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
  # tweet_length = tweet.split("").length
  # if tweet_length < 140
  #     tweet
  # elsif tweet_length > 140
  #     short_tweet = [ ]
  #     long_tweet_array = tweet.split(" ")
  #     long_tweet_array.each do |word|
  #       if dictionary.keys.include?(word)
  #           short_tweet << dictionary[word]
  #         else
  #           short_tweet << word
  #       end
  short_tweet = selective_tweet_shortener(tweet)
        if short_tweet.length > 140
          short_tweet[0..139]
        else
          short_tweet
        end
        # s1 = short_tweet.join(" ")
        # s2 = s1.split("")
        # s3 = s2[0..139]
        # s4 = s3.join("")
        # s4
        # else
        # short_tweet.join(" ")
        # end
end

# first iterate over the hash
# is long_tweet =
# long_tweet will be equal to string
# first turn long_tweet into an array
