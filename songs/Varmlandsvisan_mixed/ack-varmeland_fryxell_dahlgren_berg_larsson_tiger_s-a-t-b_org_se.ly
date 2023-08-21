\version "2.18.2"


#(ly:set-option 'point-and-click #f)

%--------------------
% Maintainer: Sven Kaiser / e-mail: noten(at)oemsel.de
% ack-varmeland_fryxell_dahlgren_berg_larsson_tiger_s-a-t-b_org_se.ly
% 2017-05-21


\header {
    poet = \markup \left-column {{
               {"1:a strofen Anders Fryxell (1795 - 1881)"} \line
               {"2:a strofen Fredrik August Dahlgren (1816 - 1895)"}}}
    composer =  \markup \right-column {{
               {"Från 1822, baserad på en traditionell folkmelodi"} \line
               {"Arr. för SATB av C. J. Berg, A. W. Larsson, F. Tiger"}}}
    title = "Ack Värmeland, du sköna"
    subtitle = "Värmlandsvisan"
    tagline = \markup { \tiny \italic "Allmän egendom och för fri användning  -  Rev. 1  -  Notsättning Sven Kaiser med http://lilypond.org - Nedladdning noter: www.oemsel.de/noten"}
}

%\header {
%    poet = \markup \left-column { {
%               {"1. Strophe Anders Fryxell (1795 - 1881)"} \line
%               {"2. Strophe Fredrik August Dahlgren (1816 - 1895)"} } }
%    composer =  \markup \right-column { {
%               {"1822 nach einem schwedischen Volkslied"} \line
%               {"SATB von C. J. Berg, A. W. Larsson, F. Tiger"} } }
%    title = "Ack Värmeland, du sköna"
%    subtitle = "Värmlandsvisan"
%    subsubtitle = "Phonetische Fassung des schwedischen Textes für Deutsche"
%    tagline =  \markup \center-column \tiny \italic { { 
%               {"Diese Noten sind gemeinfrei  -  Rev. 1  -  Notensatzprogrammierung S. Kaiser mit http://lilypond.org   -   Notendownload: www.oemsel.de/noten"} \line
%               {"Originalsatz in schwedischer Sprache: www.oemsel.de/noten/ack-varmeland_fryxell_dahlgren_berg_larsson_tiger_s-a-t-b_org_se.pdf"} } }
%}

#(set-global-staff-size 17)


\paper {
    paper-width = 21.0\cm
    paper-height = 29.7\cm
    top-margin = 0.5\cm
    bottom-margin = 1.3\cm
    left-margin = 2.0\cm
    right-margin = 2.0\cm
    print-page-number = ##f
    ragged-bottom = ##t
    markup-system-spacing = #'((basic-distance . 22) (padding . 1) (stretchability . 0))
    system-system-spacing #'basic-distance = #24
    ragged-right = ##f
    ragged-last = ##f
    annotate-spacing = ##f
}

SopranVoice =  \relative c' {
    \clef "treble" \key f \major \time 2/4
    \autoBeamOff
    \stemNeutral
    \override Rest.extra-offset = #'(0.0 . -2.0)
    \repeat volta 2 { 
      \partial 8 a8
      d8. e16 f8 g8 |
      a8~ a8 cis8 e8 |
      e8[ d8] \phrasingSlurDashed d8\( c8\) |
      a4. a8 \break |
      g4 bes8 a8 |
      f8 f8 a8.\( g16\) |
      e8.[ f16] d4~ |
      d4 r8
    }
    e8 |
    f4 f8 a8 \pageBreak |
    a8.^\markup { \vspace #2 \raise #16 " " } [ g16] g8 e8 |
    f8.[ e16] f8 d8 |
    e4 r8 a,8 |
    d8. e16 f8\( g8\) |
    a4 cis8 e8 \break |
    e8\( d8 \)d8 c8 |
    a4. a8 |
    c4 a8 g8 |
    \once \tieDashed f8~ f8 a8. g16 |
    e8.[ f16] d4~ |
    d4 r8 \bar "|."
}

AltoVoice =  \relative c' {
    \clef "treble" \key f \major \time 2/4
    \autoBeamOff
    \stemNeutral
    \override Rest.extra-offset = #'(0.0 . -2.0)
    \repeat volta 2 { 
      \partial 8 a8
      a8. cis16 d8 e8
      f8~ f8 g8 g8
      \override PhrasingSlur #'control-points = #'((1.5 . -0.8) (2.7 . -0) (3.8 . -0) (5.3 . -0.8))
      f4 \phrasingSlurDashed g8\( g8\) \revert PhrasingSlur #'control-points
      f4. f8
      g4 e8 e8
      d8 d8 \phrasingSlurDashed d8.\( e16\)
      cis4 a4~
      a4 r8
    }
    c8
    c4 c8 f8
    f8.[ e16] e8 e8
    d4 d8 d8
    cis4 r8 a8
    a8. cis16 d8\( e8\)
    f4 g8 g8
    \once \override PhrasingSlur
    #'control-points = #'((2.0 . -1.5) (2.5 . -1) (3.3 . -1) (4.3 . -1.5))
    f8\( f8\) g8 g8
    f4. f8
    g4 f8 e8
    \once \tieDashed d8~ d8 d8. d16
    cis4 d4~
    d4 r8 \bar "|."
}

TenorVoice =  \relative c' {
%    \clef "bass" \key f \major \time 2/4
    \clef "treble_8" \key f \major \time 2/4
    \autoBeamOff
    \stemNeutral
    \override Rest.extra-offset = #'(0.0 . -2.0)
    \repeat volta 2 { 
      \partial 8 a8
      f8. g16 a8 c8
      c8~ c8 a8 a8
      a4 \phrasingSlurDashed g8\( c8\)
      c4. c8
      d4 d8 cis8
      a8 a8 a8.\( bes16\)
      a4 f4~
      f4 r8
    }  
    g8
    a4 a8 c8
    c4 c8 bes8
    a8.[ g16] a8 a8
    a4 r8 a8
    f8. g16 a8\( c8\)
    c4 a8 a8
    a8\( bes8\) bes8 c8
    c4. c8
    c4 c8 bes8
    \once \tieDashed a8~ a8 bes8. bes16
    g4 f4~
    f4 r8 \bar "|."
}

BassVoice =  \relative c' {
    \clef "bass" \key f \major \time 2/4
    \autoBeamOff
    \stemNeutral
    \override Rest.extra-offset = #'(0.0 . -2.0)
    \repeat volta 2 { 
      \partial 8 a8
      f8. e16 d8 c8
      f8~ f8 e8 cis8
      \phrasingSlurDashed 
      \override PhrasingSlur 
      #'control-points = #'((1.5 . 0.8) (2.7 . 1.6) (3.8 . 1.6) (5.3 . 0.8))
      d4 e8\( e8\) \revert PhrasingSlur #'control-points
      f4. f8
      bes4 g8 a8
      d,8 d8 f8.\( g16\)
      a4 d,4~
      d4 r8
    }  
    c8
    f4 f8 f8
    c4 c8 cis8
    d4 d8 f8
    a4 r8 a8
    f8. e16 d8\( c8\)
    f4 e8 cis8
    \once \override PhrasingSlur
    #'control-points = #'((1.0 . 0.0) (2 . 1) (3 . 1) (4.2 . 0.5))
    d8\( d8\) e8 e8
    f4. f8
    e4 f8 c8
    \once \tieDashed d8~ d8 g,8. g16
    a4 d4~
    d4 r8 \bar "|."
}

TextEttEtt = \lyricmode {
  Ack, Vär -- me -- land, du skö -- na, du här -- li -- ga land,
  du kro -- na bland Sve -- a -- ri -- kes län -- der!
%  Ack, Wär -- mäh -- land, düh schöh -- na, düh här -- li -- ga land,
%  düh kruh -- na bland Swe -- ah -- ri -- käs län -- där!
}

TextEttTva = \lyricmode {
  Och kom -- me jag än "mitt i" det för -- lo -- va -- de land,
  till Värm -- land jag än -- dock å -- ter -- vän -- der!
%  Oh kom -- mä jag ähn "mit i" deh för -- lo -- wa -- de land 
%  till Wärm -- land jah ähn -- doh  oh -- tär -- wän -- där!
}

TextEttRef = \lyricmode {
  Ja, där vill jag le -- va, ja, där vill jag dö.
  Om en gång i -- från Värm -- land jag ta -- ger mig en mö,
  så vet jag att "ald  -  rig" jag mig ång -- rar.
%  Jah, dähr will jah le -- wa, jah, dähr will jah döh.
%  Ohm en gong ih -- frohn Wärm -- land jah ta -- ger mig ähn möh,
%  soh wet jag att "ald  -  rig" jah mig ohng -- rar.
}
  
TextTvaEtt = \lyricmode {
  I Vär -- me -- land ja, där __ vill jag byg -- ga och bo, 
  med enk -- las -- te lyck -- a för -- _ nöj -- der.
%  I Wär -- mäh -- land ja, där vill jah by -- ga oh buh,
%  mehd änk -- las -- täh lyck -- ah föhr -- _ nöjh -- dähr.
}

TextTvaTva = \lyricmode {
  Dess da -- lar och skog ge __ mig tyst -- nad -- ens __ _ ro,
  och luf -- ten är frisk på dess __ _ höj -- der.
%  Däss da -- lar oh skug je __ mig tyst -- na -- dens __ _ ruh,
%  oh luf -- ten är frisk poh däss __ _ höj -- där.
}
  
TextTvaRef = \lyricmode {
  Och for -- sar -- na sjung -- a sin ljuv -- li -- ga sång,
  vid den vill jag __ _ som -- na så stil -- _ la en gång
  och vi -- la i värm -- länd -- ska jor -- den.
%  Oh fohr -- sar -- na schung -- a sin jüw -- li -- ga song,
%  wid dän will jah __ _ som -- na soh stil -- _ la än gong
%  oh wi -- la i wärm -- länd -- ska juhr -- dän.
}

  

% The score definition
\score {
  <<
  \new ChoirStaff
    <<
    \new Staff \with { \consists "Ambitus_engraver"}
      <<
      \set Staff.instrumentName = "S"
      \context Staff << 
      \context Voice = "SopranVoice" { \voiceOne \SopranVoice }
      \new Lyrics = "FirstStanzaFirstLine" \lyricsto "SopranVoice" {
        << 
        \set stanza = "1." \TextEttEtt
          \new Lyrics = "FirstStanzaSecondLine"
          \with { alignBelowContext = #"FirstStanzaFirstLine" } {
            \set associatedVoice = "SopranVoice"
            \TextEttTva}
        >>
        \TextEttRef}
        \new Lyrics = "SecondStanzaFirstLine" \lyricsto "SopranVoice" {
          << 
            \set stanza = "2." \TextTvaEtt
              \new Lyrics = "SecondStanzaSecondLine"
              \with { alignBelowContext = #"SecondStanzaFirstLine"}{
                \set associatedVoice = "SopranVoice"
                \TextTvaTva}
            >>
            \TextTvaRef}
            >>
          >>
          
    \new Staff \with { \consists "Ambitus_engraver"}
    <<
      \set Staff.instrumentName = "A"
      \context Staff
      <<
        \context Voice = "AltoVoice" { \voiceOne \AltoVoice }
      \new Lyrics = "FirstStanzaFirstLine" \lyricsto "AltoVoice" {
        << 
        \set stanza = "1." \TextEttEtt
          \new Lyrics = "FirstStanzaSecondLine"
          \with { alignBelowContext = #"FirstStanzaFirstLine" } {
            \set associatedVoice = "AltoVoice"
            \TextEttTva}
        >>
        \TextEttRef}
        \new Lyrics = "SecondStanzaFirstLine" \lyricsto "AltoVoice" {
          << 
            \set stanza = "2." \TextTvaEtt
              \new Lyrics = "SecondStanzaSecondLine"
              \with { alignBelowContext = #"SecondStanzaFirstLine" } {
                \set associatedVoice = "AltoVoice"
                \TextTvaTva}
            >>
            \TextTvaRef}
            >>
          >>
          
    \new Staff \with { \consists "Ambitus_engraver"}
    <<
      \set Staff.instrumentName = "T"
      \context Staff << 
      \context Voice = "TenorVoice" { \voiceOne \TenorVoice }
      \new Lyrics = "FirstStanzaFirstLine" \lyricsto "TenorVoice" {
        << 
        \set stanza = "1." \TextEttEtt
          \new Lyrics = "FirstStanzaSecondLine"
          \with { alignBelowContext = #"FirstStanzaFirstLine" } {
            \set associatedVoice = "TenorVoice"
            \TextEttTva}
        >>
        \TextEttRef}
        \new Lyrics = "SecondStanzaFirstLine" \lyricsto "TenorVoice" {
          << 
            \set stanza = "2." \TextTvaEtt
              \new Lyrics = "SecondStanzaSecondLine"
              \with { alignBelowContext = #"SecondStanzaFirstLine" } {
                \set associatedVoice = "TenorVoice"
                \TextTvaTva}
            >>
            \TextTvaRef}
            >>
          >>
          
    \new Staff \with { \consists "Ambitus_engraver"}
    <<
      \set Staff.instrumentName = "B"
      \context Staff << 
      \context Voice = "BassVoice" { \voiceOne \BassVoice }
       \new Lyrics = "FirstStanzaFirstLine" \lyricsto "BassVoice" {
        << 
        \set stanza = "1." \TextEttEtt
          \new Lyrics = "FirstStanzaSecondLine"
          \with { alignBelowContext = #"FirstStanzaFirstLine" } {
            \set associatedVoice = "BassVoice"
            \TextEttTva}
        >>
        \TextEttRef}
        \new Lyrics = "SecondStanzaFirstLine" \lyricsto "BassVoice" {
          << 
            \set stanza = "2." \TextTvaEtt
              \new Lyrics = "SecondStanzaSecondLine"
              \with { alignBelowContext = #"SecondStanzaFirstLine" } {
                \set associatedVoice = "BassVoice"
                \TextTvaTva}
            >>
            \TextTvaRef}
            >>
          >>
        >>
       >>

  \layout {
    \context { \Score \override BarNumber.padding = #2.0 }
    indent = #5
    \context { \Lyrics
               \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
               #'((basic-distance . 0)
               (minimum-distance . 6.5)
               (padding . 0)
               (stretchability . 0))}
  }
      }       

%\score {
%<<
%\new Voice = "Sopran" { \autoBeamOff \SopranVoice }
%\new Voice = "Alto"   { \autoBeamOff \AltoVoice }
%\new Voice = "Tenor"  { \autoBeamOff \TenorVoice }
%\new Voice = "Bass"   { \autoBeamOff \BassVoice }
%>>
%\midi { }
%}