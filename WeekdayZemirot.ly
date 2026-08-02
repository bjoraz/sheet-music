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
}

\markup \box "Birkot HaShaḥar (major)"
\score {
  \relative c' {
    <c e>8^\markup { "Opening (O1)" } \bar "|" e4 \once \hide Stem c8 c4 \bar "||"
    c8^\markup { "Opening (O2)" } \bar "|" \once \hide Stem e4 d4 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \bar "|" \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8 \bar "|" \once \hide Stem d4^\markup { "Phrase ending (PhE)" } c8 <c b>8 c4 \bar "||"\break
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner.spacing-increment = #1
      \override SpacingSpanner.shortest-duration-space = #4
    }
  }
}
\score {
  \relative c' {
    c8 \bar "|" \tuplet 3/2 { e4  e8 } e8[ c16 c16] c8\fermata c16[ c16] d8[ d8] d16[ d16 d16 d16] d8.\fermata c16 d8[ c8] b16[ c8.] \bar "||"
  }
  \addlyrics {
  Ba- ruch a- ta A- do- nai E- lo- he- nu Me- lech ha- ngo- lam po- ke- aḥ ngiv- rim
  }
}
\score {
  \relative c' {
    g16 \bar "|" c8  c8 c8[ c16 c16] c8\fermata c16[ c16] c8[ c8] c16[ c16 c16 c16] d8\fermata d8 e8[ c16 b16] c4 \bar "||"
  }
  \addlyrics {
  Ba- ruch a- ta A- do- nai E- lo- he- nu Me- lech ha- ngo- lam ma- tir a- su- rim
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