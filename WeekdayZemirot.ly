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

\markup \box "Birkot hashaḥar motifs"
\score {
  \relative c' {
    <c e>8^\markup { "Opening (O1)" }  e4 \once \hide Stem c8 c4 \bar "||"
    c8^\markup { "Opening (O2)" }  \once \hide Stem e4 \once \hide Stem d4 c4 \bar "||"
    g8^\markup { "Continuation (C)" } \once \hide Stem c8 c4 \bar "||" 
    \once \hide Stem c8  \once \hide Stem d4^\markup { "Phrase ending (PhE)" } c8 <c b>8 c4 \bar "||"\break
    e16^\markup { "Emphasis (E)" } \once \hide Stem g4 \once \hide Stem e8 c4 \bar "||" 
    \once \hide Stem c8^\markup { "Closing (Cl)" } \once \hide Stem d8 \parenthesize e16 d16[ \parenthesize c16 b16 a16] g4 \bar "||"
  }


  \layout {
    \context {
      \Score
      \override SpacingSpanner.spacing-increment = #1
      \override SpacingSpanner.shortest-duration-space = #4
    }
  }
}
\markup \box "Birkot hashaḥar phrases"
\markup \italic "Alternating phrases"
\score {
  \relative c' {
    c16 \bar "|" \tuplet 3/2 { e4  e8 } e8[ c16 c16] c8\fermata c16[ c16]  c8[ c8] c16[ c16 c16 c16] d8.\fermata c16 d8[ c16 b16] c4 \bar "||"
  }
  \addlyrics {
  Ba- ruch a- ta A- do- nai E- lo- he- nu Me- lech ha- ngo- lam po- ke- aḥ ngiv- rim
  }
}
\score {
  \relative c' {
    g16 \bar "|" c8  c8 c8[ c16 c16] c8\fermata c16[ c16] c8[ c8] c16[ c16 c16 c16] d8.\fermata d16 e8[ c16 b16] c4 \bar "||"
  }
  \addlyrics {
  Ba- ruch a- ta A- do- nai E- lo- he- nu Me- lech ha- ngo- lam ma- tir a- su- rim
  }
}
\markup \italic "Ending phrase"
\score {
  \relative c' {
    d16[ d16 d16] \bar "|" d8[ d8] d8[ d16 d16] e8 d8 \tuplet 3/2 {r8 c8[ c8]} \tuplet 3/2 {d4 e8} \tuplet 3/2 {d8[ b8 a8]} g4\bar "||"
  }
  \addlyrics {
  ha- ma- nga- vir she- na me- nge- ne- nu ut- nu- ma me- ngaf- ngap- pe- nu
  }
}

\markup \box "Pesuke dezimra motifs"

\markup \box "Pesuke dezimra phrases"

\markup \box "Barukh sheamar motifs"

\markup \box "Barukh sheamar"

\markup \box "Yishtabaḥ motifs"

\markup \box "Yishtabaḥ"
