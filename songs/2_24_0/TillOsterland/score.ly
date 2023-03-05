\score { % centered <<

	\tillOsterlandHeader

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
			\new Lyrics \with {alignAboveContext = "staff"} {
				\lyricsto "bOne"
				\bOneLyricTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\bTwoLyricOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\bTwoLyricTwo
			}
		>>
	>>
}  % End score
