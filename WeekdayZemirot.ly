\version "2.26.0"

\header {
  title = "Birkot HaShahar"
  composer = "London S&P (Bennaroch)"
}

\score {
  \relative c' {
  \omit Staff.TimeSignature
  \cadenzaOn
    <c e>8 \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    g8 \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4 c8 <c b>8 c4 \bar "||" 
    c8 \bar "|" \once \hide Stem e4 d4 c4 \bar "||"\break
    c8

  }

  \layout {}
  \midi {}
}