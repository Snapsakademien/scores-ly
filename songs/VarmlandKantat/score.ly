\score { % centered <<

	\varmlandKantatHeader

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
				\tOneLyricOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\tTwoLyricOne
			}
		>>
		\new Staff = "staff" <<
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
			\new Lyrics \with {alignAboveContext = "staff"} {
				\lyricsto "bOne"
				\bOneLyricOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\bTwoLyricOne
			}
		>>
	>>
}  % End score
