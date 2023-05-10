\score { % centered <<

	\enSommaraftonHeader

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice <<
				\dynamicUp
				\voiceOne
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
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice <<
				\dynamicDown
				\voiceOne
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
		>>
	>>
}  % End score
