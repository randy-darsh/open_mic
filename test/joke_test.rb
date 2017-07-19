require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new({:id => 1, :question => "Why did the strawberry cross the road?", :answer => "Because his mother was in a jam."})
  end

  def test_it_exists
    assert_instance_of Joke, @joke
  end

  def test_it_has_attributes
    assert_equal ({:id => 1, :question => "Why did the strawberry cross the road?", :answer => "Because his mother was in a jam."}), @joke.attributes
  end

  def test_it_has_an_id
    assert_equal 1, @joke.id
  end

  def test_it_has_a_question
    assert_equal "Why did the strawberry cross the road?", @joke.question
  end

  def test_it_has_an_answer
    assert_equal "Because his mother was in a jam.", @joke.answer
  end

end
