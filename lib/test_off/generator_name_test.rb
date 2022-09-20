require 'minitest/autorun'
require './lib/generator_name'
require 'mocha/minitest'

class GeneratorNameTest < Minitest::Test
    def test_random_name
        Array.any_instance.stubs(:sample).returns('Samwise Gangee')
        assert Example.random_name == 'Samwise Gangee'
      end
     
      def test_random_email
        Array.any_instance.stubs(:sample).returns('Samwise Gangee')
        assert Example.random_email == 'samwise.gangee@shire.com.me'
      end
end