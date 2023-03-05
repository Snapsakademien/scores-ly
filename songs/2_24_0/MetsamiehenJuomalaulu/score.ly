\score { % centered <<

	\metsamiehenJoumalauluHeader

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\systemUp
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
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
				\systemBtwo
			>>
			\new Voice = "system" <<
				\dynamicUp
				\systemBone
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
		\new Lyrics  \with { alignAboveContext = "staff" }{
			\lyricsto "bOne"
			\bOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricOne
		}
	>>
}  % End score
