\score { % centered <<

	\sangerhilsenHeader

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\system
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
				\lyricsto "tOne"
				\LyricToneOne
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneTwo
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneThree
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoTwo
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoThree
			}
		>>
		\new Staff = "bass" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
				\system
			>>
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoThree
			}
		>>
	>>
}  % End score

\markup {
	\small{
		\column{
			\line{
				\concat {¹
				\italic "Tonen vugger som en"} ska sjungas som:
				\note-by-number #2 #1 #1.0
				\note-by-number #3 #0 #1.0
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #3 #0 #1.0
				\note-by-number #3 #0 #1.0
			}
			\line{
				\concat {²
				\italic "Tonevæld"} ska sjungas som:
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #2 #0 #1.0
			}
			\line{
				\concat {³
				\italic "Sjæl i Sjæl"} ska sjungas som:
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #2 #0 #1.0
			}
		}
	}
}
