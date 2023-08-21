% LilyBin
\version "2.24.0"

\include "../../Include/midiVolume.ly"
\include "../../Include/copyright.ly"
\include "../../Include/customPaper.ly"

\bookOutputName "Varmlandsvisan"
\pageHeader

\paper{
  markup-system-spacing = #'((basic-distance . 22) (padding . 1) (stretchability . 0))
  system-system-spacing.basic-distance = #16
  page-count = #1
}

\include "parts.ly"
\include "lyrics.ly"
\include "midi.ly"
\include "score.ly"
