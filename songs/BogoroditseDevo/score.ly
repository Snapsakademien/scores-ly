\score { % centered <<

	\aveMariaRachmaninoveHeader

	\new ChoirStaff <<
		\transpose f g {
			\new Staff = "tenor" <<
				\global
				\clef "treble_8"
				\new Voice <<
					\dynamicUp
					\dynamics
					\bars
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
		}
		\new Lyrics \with { alignAboveContext = "tenor" } {
			\lyricsto "tOne"
			\tOneLyric
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyric
		}
		\transpose f g, {
			\new Staff = "bass" <<
				\global
				\clef "bass"
				\new Voice <<
					\dynamicDown
					\dynamics
				>>
				\new Voice = "bOne" <<
					\voiceOne
					\bOne
				>>
				\new Voice = "bTwo" <<
					\voiceTwo
					\bTwo
				>>
				\new Voice = "bTwo" <<
					\voiceTwo
					\bTwoTwo
				>>
			>>
		}
		\new Lyrics \with { alignAboveContext = "bass" }{
			\lyricsto "bOne"
			\bOneLyric
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyric
		}
	>>
}  % End score
