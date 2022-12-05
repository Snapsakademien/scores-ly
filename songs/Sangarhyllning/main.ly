% LilyBin
\version "2.22.2"

\include "../../Include/midiVolume.ly"
\include "../../Include/copyright.ly"
\include "../../Include/customPaper.ly"

\bookOutputName "Sangarhyllning"
\pageHeader

\paper {
	ragged-last = ##f
}

\include "parts.ly"
\include "lyrics.ly"
\include "midi.ly"
\include "score.ly"
