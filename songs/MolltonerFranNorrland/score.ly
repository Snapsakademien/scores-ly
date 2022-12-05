\book{
	\bookOutputName "FestenKanBorja"
	\score { % centered <<

		\header {
			title = "Festen kan börja"
			composer = "Trad."
			arranger =  "A. Jahnke"
		}

		\new ChoirStaff <<
			\new Staff = "tenor" <<
				\global
				\clef "treble_8"
				\new Voice = "system" <<
				>>
				\new Voice = "tOne" <<
					\voiceOne
					\tOne
				>>
				\new Voice = "tTwo" <<
					\voiceTwo
					\tTwo
				>>
				\new Lyrics \with {alignAboveContext = "tenor"} {
				}
				\new Lyrics {
					\lyricsto "tTwo"
					\LyricTtwoFesten
				}
			>>
			\new Staff = "bass" <<
				\global
				\clef "bass"
				\new Voice = "system" <<
				>>
				\new Voice = "bOne" <<
					\voiceOne
					\bOne
				>>
				\new Voice = "bTwo" <<
					\voiceTwo
					\bTwo
				>>
				\new Lyrics \with {alignAboveContext = "bass"} {
				}
				\new Lyrics {
				}
			>>
		>>
	}  % End score
}

\book{
	\bookOutputName "MolltonerFranNorrland"
	\score { % centered <<

		\header {
			title = "Molltoner från Norrland"
			composer = "Trad."
			arranger =  "A. Jahnke"
		}

		\new ChoirStaff <<
			\new Staff = "tenor" <<
				\global
				\clef "treble_8"
				\new Voice = "system" <<
				>>
				\new Voice = "tOne" <<
					\voiceOne
					\tOne
				>>
				\new Voice = "tTwo" <<
					\voiceTwo
					\tTwo
				>>
				\new Lyrics \with {alignAboveContext = "tenor"} {
				}
				\new Lyrics {
					\lyricsto "tTwo"
					\LyricTtwoOneMolltoner
				}
				\new Lyrics {
					\lyricsto "tTwo"
					\LyricTtwoTwoMolltoner
				}
			>>
			\new Staff = "bass" <<
				\global
				\clef "bass"
				\new Voice = "system" <<
				>>
				\new Voice = "bOne" <<
					\voiceOne
					\bOne
				>>
				\new Voice = "bTwo" <<
					\voiceTwo
					\bTwo
				>>
				\new Lyrics \with {alignAboveContext = "bass"} {
				}
				\new Lyrics {
				}
			>>
		>>
	}  % End score
}
