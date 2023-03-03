\version "2.20.0"

#(ly:set-option 'midi-extension "mid")

\paper {
  #(set-paper-size "letter")
  top-margin = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  system-system-spacing.basic-distance = #10
  score-system-spacing =
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 1)
     (stretchability . 10))
  %system-separator-markup = \slashSeparator
}

\score {
  \new Staff \with {
    instrumentName = "Bsn."
  } {
    \voiceOne
    \clef tenor
    \time 4/4
    <<
      \relative c'' {
        c4
        -\markup {
          \translate #'(0.5 . 0) {
            \with-dimensions #'(0 . 0) #'(0 . 0)
            \raise #-2
            \draw-line #'(0 . -12)
          }
        }
        \fermata
        \once \override Staff.NoteColumn.X-offset = #11
        \slurDown
        \acciaccatura {
          b16
          -\markup {
            \translate #'(0.5 . 0) {
              \with-dimensions #'(0 . 0) #'(0 . 0)
              \raise #-3.5
              \draw-line #'(-7.9 . -12)
            }
          }
          c
          -\markup {
            \translate #'(0.5 . 0) {
              \with-dimensions #'(0 . 0) #'(0 . 0)
              \raise #-3.5
              \draw-line #'(-5 . -12)
            }
          }

        }
        \slurUp
        b16
        -\markup {
          \translate #'(0.5 . 0) {
            \with-dimensions #'(0 . 0) #'(0 . 0)
            \raise #-2.5
            \draw-line #'(-1 . -11.5)
          }
        }

        [(
        g
        -\markup {
          \translate #'(0.5 . 0) {
            \with-dimensions #'(0 . 0) #'(0 . 0)
            \raise #-6.5
            \draw-line #'(3.2 . -12)
          }
        }

        e
        -\markup {
          \translate #'(0.8 . 0) {
            \with-dimensions #'(0 . 0) #'(0 . 0)
            \raise #-7.5
            \draw-line #'(6.5 . -12.5)
          }
        }
        b'
        )]
        a4.
        -\markup {
          \translate #'(0.5 . 0) {
            \with-dimensions #'(0 . 0) #'(0 . 0)
            \raise #-1.8
            \draw-line #'(5 . -12.5)
          }
        }

        \fermata
      }
      \\
      {
      
      }
    >>
  }
  \layout {}
}

\score {
  \new Staff {
    \voiceTwo
    \clef treble
    \time 6/8
    \relative c'' {
      c4. ~ c8 b c	|
      b4 g4 r8 e8	|
      a4 ( e8 ~ e4.)	|
    }
  }
  \addlyrics {
    We are the champ -- ions,
    my friends
  }
  \layout {}
}