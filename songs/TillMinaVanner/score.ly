\score { % centered <<

	\tillMinaVannerHeader

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "systemTone" <<
				\dynamicUp
				\systemTone
			>>
			\new Voice = "systemTtwo" <<
				\dynamicDown
				\systemTtwo
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
		\new Lyrics \with { alignAboveContext = "tenor" } {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "systemBtwo" <<
				\dynamicDown
				\systemBtwo
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
