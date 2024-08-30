% LilyBin
\version "2.24.0"

\include "../../Include/midiVolume.ly"
\include "../../Include/copyright.ly"
\include "../../Include/customPaper.ly"

\bookOutputName "GutarBadNattOchDag"
\pageHeader

\paper{
	markup-system-spacing.padding = #6
	print-all-headers = ##f
	page-count = 3
}

\include "parts.ly"
\include "lyrics.ly"
\include "midi.ly"
\include "score.ly"
