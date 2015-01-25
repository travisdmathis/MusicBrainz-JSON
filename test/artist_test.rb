require './test/test_helper'

class MbjsonArtistTest < Minitest::Test
  def test_exists
    assert Mbjson::Artist
  end
end
