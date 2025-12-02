\version "2.24.4"

\paper {
  
  indent = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
  system-count = 16
}

\header {
  title = "There Will Come Soft Rains"
  poet = "Sara Teasdale"
  composer = "Nicole Woo"
  tagline = ""
}

\markup {
  \vspace #1
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/4
  \accidentalStyle modern
  \tempo "Delicately" 4=88
  \set Staff.pedalSustainStyle = #'mixed
}

\include "softrains-soprano.ily"
\include "softrains-piano.ily"

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
} { \sopranoVoice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \right
  \new Dynamics \dynamics
  \new Staff = "left" { \clef bass \left }
>>

\score {
  <<
    \sopranoVoicePart
    \pianoPart
  >>
  \layout { }
}
