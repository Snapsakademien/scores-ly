% LilyBin
\version "2.22.2"

\include "../../Include/midiVolume.ly"
\include "../../Include/copyright.ly"
\include "../../Include/customPaper.ly"

\bookOutputName "DasKonigslied"
\pageHeader

\paper {
	page-count = #1
}

\include "parts.ly"
\include "lyrics.ly"
\include "midi.ly"
\include "score.ly"