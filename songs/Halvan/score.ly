\score { % centered <<

	\halvanHeader

	\new ChoirStaff <<
		\new Staff = "staffTenor" <<
			\global
			\clef "treble_8"
			\new Voice = "systemUp" <<
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
		\new Lyrics \with { alignAboveContext = "staffTenor" }{
			\lyricsto "tOne"
			\tOneLyric
		}
		\new Lyrics {
			\lyricsto "tTwo"
			\tTwoLyric
		}

		\new Staff = "staffBass" <<
			\global
			\clef "bass"
			\new Voice = "systemDown" <<
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
		\new Lyrics \with { alignAboveContext = "staffBass" }{
			\lyricsto "bOne"
			\bOneLyric
		}
		\new Lyrics {
			\lyricsto "bTwo"
			\bTwoLyric
		}
	>>
}  % End score
