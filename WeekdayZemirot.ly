\version "2.26.0"

\header {
  title = "Zemirot"
  composer = "London S&P (Bennaroch)"
}

\layout {
  ragged-last = ##f

  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/16)
  }
}

\markup \box "Birkot HaShaḥar (major)"
\score {
  \relative c' {
  \omit Staff.TimeSignature
  \cadenzaOn
    <c e>8^\markup { "Opening (O1)" } \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4^\markup { "Ending (E)" } c8 <c b>8 c4 \bar "||" 
    c8^\markup { "Opening (O2)" } \bar "|" \once \hide Stem e4 d4 c4 \bar "||"\break
  
  }
}

\markup \box "Top-level markup"
\score {
  \relative c' {
  \omit Staff.TimeSignature
  \cadenzaOn
    <c e>8^\markup { "Opening (O)" } \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4 c8 <c b>8 c4 \bar "||" 
    c8 \bar "|" \once \hide Stem e4 d4 c4 \bar "||"\break
    c8

  }
}