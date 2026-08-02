\version "2.26.0"

\header {
  title = "Zemirot"
  composer = "London S&P (Bennaroch)"
}

\layout {
  ragged-last = ##t
  indent = 0
  \omit Staff.TimeSignature
  \cadenzaOn

  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/16)
    \override SpacingSpanner.spacing-increment = #1
    \override SpacingSpanner.shortest-duration-space = #4
  }
}

\markup \box "Birkot HaShaḥar (major)"
\score {
  \relative c' {
    <c e>8^\markup { "Opening (O1)" } \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    c8^\markup { "Opening (O2)" } \bar "|" \once \hide Stem e4 d4 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4^\markup { "Phrase ending (PhE)" } c8 <c b>8 c4 \bar "||"\break
  }
}
\score {
  \relative c' {
    c8 \bar "|" \tuplet 3/2 { e4  e8 } e8[ c16 c16] c8 c16 c16 d8 d8 d16 d16 d16 d16 d8 \bar "||" 
  }
  \addlyrics {
  Ba- ruch a- ta
  }
}

\markup \box "Top-level markup"
\score {
  \relative c' {
    <c e>8^\markup { "Opening (O)" } \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4 c8 <c b>8 c4 \bar "||" 
    c8 \bar "|" \once \hide Stem e4 d4 c4 \bar "||"\break
    c8

  }
}