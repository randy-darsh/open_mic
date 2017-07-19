require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_it_can_learn_a_joke
    ali = User.new("Ali")
    joke = Joke.new({:id => 1, :question => "Why did the strawberry cross the road?", :answer => "Because his mother was in a jam."})
    ali.learn(joke)

    assert_instance_of Array, ali.jokes
  end

  def test_it_can_tell_a_joke
    ali = User.new("Ali")
    sal = User.new("Sal")
    joke = Joke.new({:id => 1, :question => "Why did the strawberry cross the road?", :answer => "Because his mother was in a jam."})

    assert_instance_of Array, sal.tell(ali, joke)
  end

  def test_it_can_perform_routine
    ilana = User.new("Ilana")
    josh = User.new("Josh")
    joke_1 = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    joke_2 = Joke.new({id: 2, question: "How do you keep a lion from charging?", answer: "Take away its credit cards."})

    assert_instance_of Array, ilana.perform_routine_for(josh)
  end

end
