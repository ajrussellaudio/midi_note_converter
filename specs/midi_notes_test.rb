require "minitest/autorun"
require "minitest/rg"
require_relative "../midi_notes"

class Functions_Practice < MiniTest::Test

  def test_middle_c()
    middle_c_result = note_name(60)
    assert_equal( "C3", middle_c_result )
  end

  def test_lowest_c()
    lowest_c_result = note_name(0)
    assert_equal( "C-2", lowest_c_result )
  end

  def test_sharp()
    f_sharp_result = note_name(66)
    assert_equal( "F#3", f_sharp_result )
  end

  def test_out_of_range()
    out_of_range_result = note_name(128)
    assert_equal( "Out of range.", out_of_range_result)
  end

end