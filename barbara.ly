\version "2.24.4"

\header {
  title = "Barbara Allen"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  % Add space for instrument names
  indent = 18\mm
  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/4
  \tempo 4=80
}

right = \relative c'' {
  \global
  % Music follows here.
  \sectionLabel "Theme"
  \partial 8 c8\( | e f g4. f8 | e d c4. d8 | e g c4 c | b8 g4.\) r8 b\( |
  c a f4 g8 a | g e c4. d8 | e g a4. g8 | e c4.\) r8 <c g>\( |
  <e c> <f d> <g e>4. <f d>8 | <e c> <d g,> <c e,>4. <d g,>8 | <e c> <g e> <c e,>4 q | <b d,>8 <g b,>4.\) r8 <b g>\( |
  <c f,> <a c,> <f a,>4 <g e>8 <a f> | <g e> <e c> <c a>4. <d b>8 | <e c> <g c,> <a c,>4. <g b,>8 | \partial 2 <e c> <c g>4.\) |
  \section \break
  \tempo "Allegro" 4=100
  e16 f g8~ g16 g, a b c d e c | f16 e d8~ d16 g, b c d e f d | 
  e16 a c8~ c16 d c b a c b a  | b16 a g fis g b d, c bes c e g |
  r8 c16 a f8 c a f' | r8 c'16 g e8 c g e' | 
  r8 f16 g a8 d, b g' | e16 d c8~ c16 d e f g a bes g |
  c a f c a c f a c b? a b | c g e c g c e g c b a g |
  a fis d a fis a d fis a c b a | g d b g d g b d g f e d |
  r8 c' g e fis g | r b g d fis g |
  r c a e fis g | r d' a fis g a |
  b16 a g8~ g16 g, b c d c b a | g2.\fermata |
  \section \break
  \time 6/8 \tempo "Andante grazioso" 4.=60
  e'8. f16 g8 g4 f8 | e8. d16 c8 c4 g'8 | a4 a8 c4 c8 | << {b4 a16 fis g4 f8} \\ {d4. b4.} >> |
  e8. f16 g8 g4 g8 | a8. b16 c8 c4 a8 | g4 e8 f4 d8 | <d b f>4. <c g e> |
  e8. c16 b8 a4 b8 | c4. b4 d8 | c8. e16 a8 a4 b8 | c8. b16 a8 gis4. |
  f8. e16 g8 bes a f | d8. cis16 f8 aes g e | d8. e16 f8 e f g | a8. g16 f d c4.~ | c r4 r8 |
  \section \break
  \time 4/4 \tempo "Allegro con brio" 4=168
  \clef bass r8 <e,, c> q q q q q q | q q q q q q <f c> q | 
  <g c,>4~ q16 f e d c8 r r4 | \clef treble \acciaccatura fis''8 g4~ g16 f e d c8 r r4 |
  \clef bass <a, f>8 q q q q q q q | q q q q q q <b f> <c f,> |
  <d g,>4~ q16 c b a g8 r r4 | \clef treble \acciaccatura cis''8 d4~ d16 c b a g8 r r4 |
  \acciaccatura b8 c2.~ c16 a f a | c a f a c a f a c a f a c a f a |
  c a f a g a g e c d e g a g e c | a8 r g r e r c r | g1\fermata |
  \section \break
  \time 4/2 \tempo "Andante" 2=60 \key g \major
  <<
    {
      \autoBreaksOff
      b'1 c2 d | d1 c | \break b1 a4 g fis g | b2 d d2. c4 | \break
      b1 c2 d | d1 e2 c | \break b2 d e4 d c a | a1 g~ | g 
      \autoBreaksOn
    }
    \\
    { \override TupletBracket.bracket-visibility = ##t 
      \tuplet 6/4 {r8 b, d g d b}  \tuplet 6/4 {d b d g d b} \tuplet 6/4 {r d g b g d} \tuplet 6/4 {r d g b g d} | 
      \override TupletBracket.bracket-visibility = ##f \omit TupletNumber
      \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} |      
      \tuplet 6/4 {r b e g e b} \tuplet 6/4 {e b e g e b} \tuplet 6/4 {r c e r c e} \tuplet 6/4 {r c e r bes e} |
      \tuplet 6/4 {r b? d g d b} \tuplet 6/4 {r d g b g d} \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} |
      \tuplet 6/4 {r b d g d b}  \tuplet 6/4 {d b d g d b} \tuplet 6/4 {r d g b g d} \tuplet 6/4 {r d g b g d} | 
      \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} \tuplet 6/4 {r e a c a e} \tuplet 6/4 {r c e a e c} | 
      \tuplet 6/4 {r b d g d b} \tuplet 6/4 {r d g b g d} \tuplet 6/4 {r fis a r fis a} \tuplet 6/4 {r d, fis r d fis} |
      \tuplet 6/4 {r c d fis d c} \tuplet 6/4 {d c d fis d c} \tuplet 6/4 {r g b d b g} \tuplet 6/4 {b g b d b g~} | g1 
    }
  >>
  r1
  \section \break
}

dynamics = {
  \global
  % Dynamics follow here.
  \partial 8 s8\p |
  s2.*7 | s2 s4\mf | s2.*7 | \partial 2 s2 |
  s2*18 |
}

left = \relative c' {
  \global
  % Music follows here.
  \partial 8 r8 |
  c4( <e g>2) | c4( <e g>2) | c4( <e g>2) | g,4( <b d>2) |
  f4( <a c>2) | << {e'2. | g4( f2)}  \\ {c4( a2) | c2( g4)} >> | c4( <e g>4) r |
  \clef bass c,4( <g' c>2) | c,4( <g' c>2) | c,4( <g' c>2) | g,4( <d' g>2) |
  f,4( <c' f>2) | << {e2. | g4( f2)}  \\ {c4( a2) | c2( g4)} >> | \partial 2 c4( <e g>) |
  \section \break
  c8 e'16 d e8 c c, c' | g,8 b'16 a b8 g g, g' | 
  a,8 c'16 b c8 a a, a' | g,8 b'16 a b8 g c c, |
  f16 g a8~ a16 b a g f g a f | e16 d c8~ c16 d e f e d c e |
  f16 e d8~ d16 c b a g a b g | c8 c'16 b c8 g e c |
  f, a' f a f f, | e g' e g e e, |
  d fis' a fis d d, | g d' f d g, f' |
  
  c16 e g c e c g e c d e g | b, d g b d b g d b c d g |
  c, e a c e c a e c d e a | d, fis a d fis d a fis d e fis d |
  g,8 b'16 a b8 g d d, | g2.\fermata |
  \section \break
  \clef treble
  << {g''4 g8 g4 g8 | g4 g8 g4 c8 | 
      c4 c8 a4 a8 } \\ 
     {c,8. d16 e8 e4 b8 | 
      c8. d16 e8 e4 e8 | f4 f8 f4 f8 } >> | g4 d8 g,4. |
  << {g'4 g8 g4 c8 | c4 c8 c4 c8 | c4 g8 g4. } \\ 
     {c,8. d16 e8 e4 e8 | f8. g16 a8 a4 f8 | e4 c8 b g4 } >> | \clef bass c4 g8 c,4. |
  a'8 c e a, c e | gis, d' e gis, d' e |
  a, c e f, c' dis | e, a c e, b' e |
  \clef treble
  <cis bes'>4 r8 <d a'>4 r8 | <b aes'>4 r8 <c g'>4 r8 |
  \clef bass
  <f, d'>4 r8 <g c>4 r8 | <g b>4 r8 c8. g16 e8 | c4. r4 r8 |
  \section \break
  c,8 <c g'> q q q q q q | q q q q q q q q |
  q q q q q q q q | q q q q q q q q |
  <a f'> q q q q q q q | q q q q q q q q |
  <b g'> q q q q q q q | q q q q q q q q |
  <a f'> q q q q q q q | q q q q q q q q |
  <f f'>4 <g' g'>2~ q8 c16 e | a8 r g r e r c r | g1\fermata |
  \section \break
  <g g'>1 q2 q | <fis fis'>1~ q | <e e'>1 <c c'>2. <cis cis'>4 | <d d'>1~ q |
  <g g'>1 q2 q | <fis fis'>1 <c c'>2 <e e'>2 | <g g'>1 <d d'> | <g g'>1~ q~ |
  q1 r |
  \section \break
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \right
    \new Dynamics \dynamics
    \new Staff = "left" { \clef treble \left }
  >>
  \layout { }
}
