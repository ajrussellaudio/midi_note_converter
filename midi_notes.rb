def note_name(note_number)
  return "Out of range." if note_number > 127

  note = case note_number % 12
  when 0
    "C"
  when 1
    "C#"
  when 2
    "D"
  when 3
    "D#"
  when 4
    "E"
  when 5
    "F"
  when 6
    "F#"
  when 7
    "G"
  when 8
    "G#"
  when 9
    "A"
  when 10
    "A#"
  when 11
    "B"
  end

  octave = (note_number / 12) - 2
  octave = octave.to_s

  return note + octave
end